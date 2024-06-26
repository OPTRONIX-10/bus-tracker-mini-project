import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/application/home/staff/staff_home/staff_home_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/home/staff_home_screen/widgets/loading_loaction_widget.dart';
import 'package:mini_project/presentation/snackbar.dart';

class StaffHomePage extends StatelessWidget {
  StaffHomePage({super.key});
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng destination = LatLng(9.3173, 76.6175);
  //bool _updated = false;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor studentLocationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationLocationIcon = BitmapDescriptor.defaultMarker;

  List<Marker> markers = [];



  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/bus_image.png")
        .then(
      (icon) {
        currentLocationIcon = icon;
      },
    );
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/student.png")
        .then(
      (icon) {
        studentLocationIcon = icon;
      },
    );
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/college.png")
        .then(
      (icon) {
        destinationLocationIcon = icon;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    context.read<StaffHomeBloc>().add(const StaffHomeEvent.getCurrentLocation());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setCustomMarkerIcon();
      context.read<StaffHomeBloc>().add(const StaffHomeEvent.locationUpdateSuccess());
    });
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('STUDENTS LOCATION',
              style: TextStyle(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold)),
          actions: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.authFailureOrSuccess.fold(() {}, (a) {
                  a.fold((l) {
                     ScaffoldMessenger.of(context).showSnackBar(
                            showErrorDialog(context, l.toString()));
                  }, (r) {
                    if (r == "logout") {
                      context.read<AuthBloc>().add(
                            const AuthEvent.resetState(),
                          );
                      context
                          .read<StaffHomeBloc>()
                          .add(const StaffHomeEvent.resetLocation());
                      context.read<StaffHomeBloc>().add(
                            const StaffHomeEvent.stopLocationListening(),
                          );
                      Navigator.pushNamedAndRemoveUntil(
                          context, staffLoginPage, (route) => false);
                    }
                  });
                });
              },
              child: IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                },
              ),
            )
          ],
        ),
        body: BlocBuilder<StaffHomeBloc, StaffHomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              const Center(child: LoadingLocationScreen());
            }
            return state.getLocationModel.fold(() {
              return const SizedBox();
            }, (a) {
              return a.fold((l) {
                return Text(l.toString());
              }, (r) {
                log(r.toString());
                // Future updatedMap() async {
                //   final gMapController = await _controller.future;

                //   await gMapController.animateCamera(
                //       CameraUpdate.newCameraPosition(CameraPosition(
                //           target: LatLng(
                //             r.latitude,
                //             r.longitude,
                //           ),
                //           zoom: 18.0)));
                // }

                // if (_updated) {
                //   updatedMap();
                // }
             
                return state.getStudentLocationModel.fold(() {
                  return const SizedBox();
                },
                    (a) => a.fold((l) {
                          return Text(l.toString());
                        }, (studentLocationList) {
                          log(studentLocationList.toString());
                          for (var location in studentLocationList) {
                            markers.add(
                              Marker(
                                markerId:
                                    MarkerId(location.latitude.toString()),
                                position: LatLng(
                                    location.latitude, location.longitude),
                                icon: studentLocationIcon,
                              ),
                            );
                          }
                          return GoogleMap(
                            myLocationButtonEnabled: true,
                            trafficEnabled: true,
                            initialCameraPosition: CameraPosition(
                              target: LatLng(r.latitude, r.longitude),
                              zoom: 18.0,
                            ),
                            markers: {
                              ...markers,
                              Marker(
                                markerId: const MarkerId("currentLocation"),
                                icon: currentLocationIcon,
                                position: LatLng(r.latitude, r.longitude),
                              ),
                              Marker(
                                markerId: const MarkerId("Destination"),
                                position: LatLng(destination.latitude,
                                    destination.longitude),
                                icon: destinationLocationIcon,
                              ),
                            },
                            onMapCreated: (mapController) async {
                              _controller.complete(mapController);
                              //_updated = true;
                            },
                            
                          );
                        }));
              });
            });
          },
        ));
  }
}
