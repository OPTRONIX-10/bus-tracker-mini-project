import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart' as loc;
import 'package:mini_project/domain/home/staff/i_staff_home_repo.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

String sharedPrefvehicelId = '';

@LazySingleton(as: IStaffHomeRepo)
class StaffHomeRepo implements IStaffHomeRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription<loc.LocationData>? _locationSubscription;

  @override
  Future<Either<MainFailure, LatLng>> convertLatLngToScreenCoordinates(
      {required GoogleMapController mapController,
      required LatLng position}) async {
    try {
      final screenCoordinates =
          await mapController.getScreenCoordinate(position);
      LatLng coordinates = await mapController.getLatLng(screenCoordinates);
      return Right(coordinates);
    } catch (e) {
      return const Left(MainFailure.serverFailure());
    }
  }

  @override
  Future<Either<MainFailure, LatLng>> getCurrentLocation() async {
    try {
      final bool permission = await getLocationPermission();

      if (permission) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.bestForNavigation);

        final currentPosition = LatLng(position.latitude, position.longitude);
        final currentUSer = _auth.currentUser;
        if (currentUSer != null) {
          await _firestore.collection('stafflocation').doc('bus1').set(
              {'latitude': position.latitude, 'longitude': position.longitude});
          return Right(currentPosition);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      }
      return const Left(MainFailure.otherFailure('Permission not granted'));
    } catch (e) {
      return const Left(MainFailure.serverFailure());
    }
  }

  @override
  Future<bool> getLocationPermission() async {
    try {
      PermissionStatus status = await Permission.location.request();
      if (status.isGranted) {
        return true;
      } else if (status.isDenied) {
        await getLocationPermission();
        return true;
      } else if (status.isPermanentlyDenied) {
        await openAppSettings();
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<MainFailure, void>> listenLocation() async {
    try {
      final loc.Location location = loc.Location();
      _locationSubscription = location.onLocationChanged
          .listen((loc.LocationData currentlocation) async {
        final currentUSer = _auth.currentUser;
        if (currentUSer != null) {
          await FirebaseFirestore.instance
              .collection('stafflocation')
              .doc('bus1')
              .set({
            'latitude': currentlocation.latitude,
            'longitude': currentlocation.longitude,
          }, SetOptions(merge: true));
          log(currentlocation.latitude.toString());
        }
      });
      return const Right(null);
    } catch (e) {
      return const Left(MainFailure.serverFailure());
    }
  }

  @override
  Future<void> stopListening() async {
    await _locationSubscription?.cancel();

    _locationSubscription = null;
  }

  @override
  Stream<LocationModel> get locationStream {
    return _firestore
        .collection('stafflocation')
        .doc('bus1')
        .snapshots()
        .map((loactionData) => locationDataFromSnapshots(loactionData));
  }

  @override
  LocationModel locationDataFromSnapshots(DocumentSnapshot snapshot) {
    return LocationModel(
        latitude: snapshot.get('latitude'),
        longitude: snapshot.get('longitude'));
  }

  @override
  Stream<Either<MainFailure, List<LocationModel>>> studentLocationDataStream() {
    try {
      return _firestore.collection('studentlocation').snapshots().map(
        (QuerySnapshot querySnapshot) {
          final List<LocationModel> locations = [];
          for (DocumentSnapshot locationData in querySnapshot.docs) {
            locations.add(locationDataFromSnapshots(locationData));
          }
          return Right(locations);
        },
      );
    } catch (e) {
      return Stream.value(const Left(MainFailure.serverFailure()));
    }
  }
}
