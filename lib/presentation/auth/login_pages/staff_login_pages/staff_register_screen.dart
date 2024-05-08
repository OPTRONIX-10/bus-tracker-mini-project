
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/application/auth/profile_photo/profile_photo_bloc.dart';
import 'package:mini_project/domain/constants/constants.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/footer.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/header_text_widget.dart';
import 'package:mini_project/presentation/snackbar.dart';

class StaffRegisterScreen extends StatefulWidget {
  const StaffRegisterScreen({super.key});

  @override
  State<StaffRegisterScreen> createState() => _StaffRegisterScreenState();
}

class _StaffRegisterScreenState extends State<StaffRegisterScreen> {
  final ValueNotifier<bool> _isObscure = ValueNotifier(true);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _phoneNoController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _vehicleController = TextEditingController();

  dynamic _imageFile;

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
                    const Align(
                      alignment: Alignment.topLeft,
                      child: HeaderTextWidget(text: 'Staff Register'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<ProfilePhotoBloc, ProfilePhotoState>(
                      builder: (context, state) {
                        return state.photoSelected.fold(() {
                          return GestureDetector(
                              onTap: () {
                                context.read<ProfilePhotoBloc>().add(
                                    const ProfilePhotoEvent.pickedPhoto(
                                        source: ImageSource.gallery));
                              },
                              child: CircleAvatar(
                                radius: 100,
                                child: (_imageFile == null)
                                    ? const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.person,
                                            size: 100,
                                          ),
                                          Text('Add Image'),
                                        ],
                                      )
                                    : null,
                              ));
                        }, (a) {
                          return a.fold((l) {
                            return Text(l.toString());
                          }, (r) {
                            _imageFile = r;
                            return GestureDetector(
                                onTap: () {
                                  context.read<ProfilePhotoBloc>().add(
                                      const ProfilePhotoEvent.pickedPhoto(
                                          source: ImageSource.gallery));
                                },
                                child: CircleAvatar(
                                  radius: 100,
                                  backgroundImage: state.isLoading
                                      ? null
                                      : MemoryImage(_imageFile),
                                  child: (_imageFile == null)
                                      ? const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              size: 100,
                                            ),
                                            Text('Add Image'),
                                          ],
                                        )
                                      : null,
                                ));
                          });
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _nameController,
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
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _phoneNoController,
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
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _vehicleController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Vehicle Number is required';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'Vehicle Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
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
                    const SizedBox(height: 20),
                    ValueListenableBuilder(
                        valueListenable: _isObscure,
                        builder: (context, value, child) {
                          return TextFormField(
                            controller: _passwordController,
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
                    const SizedBox(height: 20),
                    SizedBox(
                        height: constraint.maxHeight * bHeight,
                        width: constraint.maxWidth * bWidth,
                        child: BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            state.authFailureOrSuccess.fold(() {}, (a) {
                              a.fold((l) {
                                 ScaffoldMessenger.of(context).showSnackBar(
                            showErrorDialog(context, l.toString()));
                              }, (r) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    staffHomePage, (route) => false);
                              });
                            });
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    final sharedPrefs = context
                                        .read<AuthBloc>()
                                        .add(AuthEvent.staffSignUp(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                          image: _imageFile,
                                          phone: _phoneNoController.text,
                                          name: _nameController.text,
                                          vehicleNumber:
                                              _vehicleController.text,
                                        ));
                                  }
                                },
                                child: state.isLoading
                                    ? const CircularProgressIndicator()
                                    : const Text(
                                        'Register',
                                        style: TextStyle(color: Colors.black),
                                      ));
                          },
                        )),
                    const SizedBox(height: 20),
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
