import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/auth/auth_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.authFailureOrSuccess.fold(() {}, (a) {
                a.fold((l) {}, (r) {
                  if (r == "logout") {
                    context.read<AuthBloc>().add(
                          AuthEvent.resetState(),
                        );
                    Navigator.pushNamedAndRemoveUntil(
                        context, studentLoginPage, (route) => false);
                  }
                });
              });
            },
            builder: (context, state) {
              return IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthBloc>().add(AuthEvent.signOut());
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
