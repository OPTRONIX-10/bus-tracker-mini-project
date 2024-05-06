import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/domain/constants/constants.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/footer.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/header_text_widget.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/snackbar.dart';

class StaffLoginScreen extends StatelessWidget {
  StaffLoginScreen({super.key});
  ValueNotifier<bool> _isObscure = ValueNotifier(true);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                        child: HeaderTextWidget(text: 'Staff Login'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                              controller: _passwordController,
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
                                          AuthEvent.signIn(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text));
                                    }
                                  },
                                  child: state.isLoading
                                      ? CircularProgressIndicator()
                                      : Text(
                                          'Login',
                                          style: TextStyle(color: Colors.black),
                                        ));
                            },
                          )),
                      SizedBox(height: 20),
                      Footer(
                          text: "Don't have an account?",
                          buttonText: 'Register',
                          onPressed: () {
                            Navigator.of(context).pushNamed(staffRegisterPage);
                          })
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
