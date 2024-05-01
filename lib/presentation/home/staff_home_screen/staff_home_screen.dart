import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/application/home/staff/staff_home/staff_home_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/home/staff_home_screen/widgets/loading_loaction_widget.dart';

class StaffHomePage extends StatelessWidget {
  StaffHomePage({super.key});
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng destination = LatLng(9.234807, 76.6217505);
  static const LatLng destination1 = LatLng(9.134807, 76.2217505);
  static const LatLng destination2 = LatLng(9.134807, 76.1217505);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StaffHomeBloc>().add(StaffHomeEvent.locationUpdateSuccess());
    });
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('STUDENTS LOCATION',
              style: TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold)),
          actions: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.authFailureOrSuccess.fold(() {}, (a) {
                  a.fold((l) {}, (r) {
                    if (r == "logout") {
                      context.read<AuthBloc>().add(
                            AuthEvent.resetState(),
                          );
                      context
                          .read<StaffHomeBloc>()
                          .add(StaffHomeEvent.resetLocation());
                      context.read<StaffHomeBloc>().add(
                            StaffHomeEvent.stopLocationListening(),
                          );
                      Navigator.pushNamedAndRemoveUntil(
                          context, staffLoginPage, (route) => false);
                    }
                  });
                });
              },
              child: IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthBloc>().add(AuthEvent.signOut());
                },
              ),
            )
          ],
        ),
        body: BlocBuilder<StaffHomeBloc, StaffHomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              Center(child: LoadingLocationScreen());
            }
            return state.getCoordinates.fold(() {
              return Center(child: LoadingLocationScreen());
            }, (a) {
              return a.fold((l) {
                return Text(l.toString());
              }, (r) {
                return GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(r.latitude, r.longitude),
                    zoom: 18.0,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId("currentLocation"),
                      position: LatLng(r.latitude, r.longitude),
                    ),
                    Marker(
                      markerId: MarkerId("student1 location"),
                      position:
                          LatLng(destination1.latitude, destination.longitude),
                    ),
                    Marker(
                      markerId: MarkerId("student2 location"),
                      position:
                          LatLng(destination2.latitude, destination.longitude),
                    ),
                  },
                  onMapCreated: (mapController) {
                    _controller.complete(mapController);
                  },
                );
              });
            });
          },
        ));
  }
}
