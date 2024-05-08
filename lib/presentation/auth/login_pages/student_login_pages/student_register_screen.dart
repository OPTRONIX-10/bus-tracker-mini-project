import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/domain/constants/constants.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/footer.dart';
import 'package:mini_project/presentation/auth/login_pages/common_widgets/header_text_widget.dart';
import 'package:mini_project/presentation/snackbar.dart';

class StudentRegisterScreen extends StatelessWidget {
  StudentRegisterScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _isObscure = ValueNotifier(true);

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
                        child: HeaderTextWidget(text: 'Student Register'),
                      ),
                      const SizedBox(
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
                      const SizedBox(height: 20),
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
                                      studentHomePage, (route) => false);
                                });
                              });
                            },
                            builder: (context, state) {
                              return ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      context.read<AuthBloc>().add(
                                          AuthEvent.studentSignUp(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text));
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
                            Navigator.of(context).pushNamed(studentLoginPage);
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
