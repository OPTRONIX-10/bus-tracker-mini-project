import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/src/types/image_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/auth/i_auth_repo.dart';
import 'package:mini_project/domain/auth/models/user_model.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _storage = FirebaseStorage.instance;
  final _firestore = FirebaseFirestore.instance;
  @override
  Future<Either<MainFailure, String>> staffSignup(
      {required dynamic image,
      required String phone,
      required String name,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final profileImageUrl = await uploadProfileImageToStorage(image: image);

      if (userCredential.user != null) {
        await _firestore
            .collection('staffdetails')
            .doc(userCredential.user!.uid)
            .set({
          'buyserId': userCredential.user!.uid,
          'name': name,
          'email': email,
          'phone': phone,
          'profileImage': profileImageUrl
        });

        return right(userCredential.user!.uid);
      } else {
        return left(
            const MainFailure.firebaseFailure('User registration failed.'));
      }
    } catch (e) {
      return left(MainFailure.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<MainFailure, String>> studentSignup(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        return right(userCredential.user!.uid);
      } else {
        return left(
            const MainFailure.firebaseFailure('User registration failed.'));
      }
    } catch (e) {
      return left(MainFailure.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<MainFailure, bool>> logout() async {
    try {
      await _auth.signOut();
      return right(true);
    } catch (e) {
      return left(MainFailure.firebaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<MainFailure, String>> signin(
      {required String email, required String password}) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        UserModel.instance.uid = userCredential.user!.uid;
        return right(userCredential.user!.uid);
      } else {
        return left(MainFailure.firebaseFailure('Sign-in failed.'));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(MainFailure.firebaseFailure('User not found.'));
      } else if (e.code == 'wrong-password') {
        return left(MainFailure.firebaseFailure('Incorrect password.'));
      } else {
        return left(const MainFailure.firebaseFailure('Sign-in failed'));
      }
    } catch (e) {
      return left(MainFailure.firebaseFailure("e.toString()"));
    }
  }

  @override
  Future<void> registerSharedPref(String uid) async {
    final sharedPref = SharedPreferences.getInstance();
    await sharedPref.then((value) => value.setString('uid', uid));
  }

  @override
  Future<void> removeSharedpref() async {
    final sharedPref = SharedPreferences.getInstance();
    await sharedPref.then((value) => value.remove('uid'));
    return;
  }

  @override
  Future<Either<MainFailure, dynamic>> pickProfileImage(
      {required ImageSource source}) async {
    final _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      final file = await pickedFile.readAsBytes();
      return right(file);
    } else {
      return left(const MainFailure.otherFailure('Image pick failed.'));
    }
  }

  @override
  Future<Either<MainFailure, dynamic>> uploadProfileImageToStorage(
      {required image}) async {
    try {
      TaskSnapshot taskSnapshot = await _storage
          .ref()
          .child('Profile Pics')
          .child(_auth.currentUser!.uid)
          .putData(image);
      final imageUrl = await taskSnapshot.ref.getDownloadURL();
      return right(imageUrl);
    } catch (e) {
      return left(MainFailure.firebaseFailure(e.toString()));
    }
  }
}
