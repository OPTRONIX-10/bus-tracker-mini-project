import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/home/staff/staff_home/staff_home_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';

class RouteSelectionScreen extends StatelessWidget {
  const RouteSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () {
        context.read<StaffHomeBloc>().add(StaffHomeEvent.getCurrentLocation());
        Navigator.pushNamed(context, staffHomePage);
      },
      child: Text('Staff Home Page'),
    )));
  }
}
