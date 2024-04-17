import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mini_project/application/auth/auth_bloc.dart';
import 'package:mini_project/domain/constants/constants.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/infrastructure/auth/auth_repo.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/footer.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/header_text_widget.dart';

class StaffRegisterScreen extends StatefulWidget {
  StaffRegisterScreen({super.key});

  @override
  State<StaffRegisterScreen> createState() => _StaffRegisterScreenState();
}

class _StaffRegisterScreenState extends State<StaffRegisterScreen> {
  ValueNotifier<bool> _isObscure = ValueNotifier(true);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();

  TextEditingController _phoneNoController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  late dynamic _image;
  AuthRepo _auth = AuthRepo();

  _selectedGalleryImage() async {
    final image = await _auth.pickProfileImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context, constraint) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: HeaderTextWidget(text: 'Staff Register'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await _selectedGalleryImage();
                        log(_image);
                      },
                      child: CircleAvatar(
                          radius: 100,
                          child: //_image == null
                              Icon(
                            Icons.person,
                            size: 100,
                          )
                          // : Image.file(
                          //     _image,
                          //     fit: BoxFit.cover,
                          //   )
                          ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Phone Number is required';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(height: 20),
                    ValueListenableBuilder(
                        valueListenable: _isObscure,
                        builder: (context, value, child) {
                          return TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is required';
                              }
                              return null;
                            },
                            obscureText: _isObscure.value,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _isObscure.value = !_isObscure.value;
                                    },
                                    icon: Icon(_isObscure.value
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          );
                        }),
                    SizedBox(height: 20),
                    SizedBox(
                        height: constraint.maxHeight * bHeight,
                        width: constraint.maxWidth * bWidth,
                        child: BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            state.authFailureOrSuccess.fold(() {}, (a) {
                              a.fold((l) {
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //     errorMessage(context, l.toString()));
                              }, (r) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    staffHomePage, (route) => false);
                              });
                            });
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<AuthBloc>().add(
                                        AuthEvent.staffSignUp(
                                            email: _emailController.text,
                                            password: _passwordController.text,
                                            image: null,
                                            phone: _phoneNoController.text,
                                            name: _nameController.text));
                                  }
                                },
                                child: state.isLoading
                                    ? CircularProgressIndicator()
                                    : Text(
                                        'Register',
                                        style: TextStyle(color: Colors.black),
                                      ));
                          },
                        )),
                    SizedBox(height: 20),
                    Footer(
                        text: "Already have an account?",
                        buttonText: 'Login',
                        onPressed: () {
                          Navigator.of(context).pushNamed(staffLoginPage);
                        })
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
