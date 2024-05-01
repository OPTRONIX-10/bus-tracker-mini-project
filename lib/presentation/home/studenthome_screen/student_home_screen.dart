import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng destination = LatLng(9.234807, 76.6217505);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BUS LOCATION',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold)),
              IconButton(
                icon: Icon(Icons.bus_alert_outlined, color: Colors.deepPurple),
                onPressed: () {},
              )
            ],
          ),
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
                return TextButton(
                  child: Text("Logout"),
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthEvent.signOut());
                  },
                );
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Staff Name"),
                        SizedBox(height: 10),
                        Text("Staff Phone Number"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(destination.latitude, destination.longitude),
                zoom: 13.5,
              ),
              markers: {
                Marker(
                  markerId: MarkerId("currentLocation"),
                  position: LatLng(destination.latitude, destination.longitude),
                ),
              },
              onMapCreated: (mapController) {
                _controller.complete(mapController);
              },
            ))
          ],
        ));
  }
}
