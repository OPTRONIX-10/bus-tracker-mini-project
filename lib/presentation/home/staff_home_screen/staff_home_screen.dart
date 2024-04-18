import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';

class StaffHomePage extends StatelessWidget {
  StaffHomePage({super.key});
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng destination = LatLng(9.234807, 76.6217505);
  static const LatLng destination1 = LatLng(9.134807, 76.2217505);
  static const LatLng destination2 = LatLng(9.134807, 76.1217505);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('STUDENTS LOCATION',
              style: TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold)),
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
                          context, staffLoginPage, (route) => false);
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
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(destination.latitude, destination.longitude),
            zoom: 13.5,
          ),
          markers: {
            Marker(
              markerId: MarkerId("currentLocation"),
              position: LatLng(destination.latitude, destination.longitude),
            ),
            Marker(
              markerId: MarkerId("currentLocation"),
              position: LatLng(destination1.latitude, destination.longitude),
            ),
            Marker(
              markerId: MarkerId("currentLocation"),
              position: LatLng(destination2.latitude, destination.longitude),
            ),
          },
          onMapCreated: (mapController) {
            _controller.complete(mapController);
          },
        ));
  }
}
