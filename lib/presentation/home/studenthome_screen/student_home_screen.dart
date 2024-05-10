import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/application/home/student/bus_location/bus_location_bloc.dart';
import 'package:mini_project/application/home/student/student_home/student_home_bloc.dart';
import 'package:mini_project/application/home/student/student_staff_detail/staff_detail_bloc.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/snackbar.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng destination = LatLng(9.3173, 76.6175);
  //bool _updated = false;

  BitmapDescriptor busLocationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor studentLocationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationLocationIcon = BitmapDescriptor.defaultMarker;

  

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/bus_image.png")
        .then(
      (icon) {
        busLocationIcon = icon;
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
    context
        .read<StudentHomeBloc>()
        .add(const StudentHomeEvent.getCurrentLocation());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<StudentHomeBloc>()
          .add(const StudentHomeEvent.locationUpdateSuccess());
      context
          .read<StaffDetailBloc>()
          .add(const StaffDetailEvent.fetchStaffDetail());
      setCustomMarkerIcon();
    });
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BUS LOCATION',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            ],
          ),
          actions: [
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.authFailureOrSuccess.fold(() {}, (a) {
                  a.fold((l) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showErrorDialog(context, l.toString()));
                  }, (r) {
                    if (r == "logout") {
                      context.read<AuthBloc>().add(
                            const AuthEvent.resetState(),
                          );
                      Navigator.pushNamedAndRemoveUntil(
                          context, studentLoginPage, (route) => false);
                    }
                  });
                });
              },
              builder: (context, state) {
                return TextButton(
                  child: const Text("Logout"),
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
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
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: BlocBuilder<StaffDetailBloc, StaffDetailState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return state.staffDetailsFetched.fold(() {
                      return const SizedBox();
                    }, (a) {
                      return a.fold((l) {
                        return Text(l.toString());
                      }, (r) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(r.profileImage),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  r.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '+91 ${r.phone}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        );
                      });
                    });
                  },
                ),
              ),
            ),
            Expanded(child: BlocBuilder<StudentHomeBloc, StudentHomeState>(
              builder: (context, state) {
                if (state.isLoading) {
                  const Center(child: CircularProgressIndicator());
                }
                return state.getLocationModel.fold(() {
                  return const SizedBox();
                }, (a) {
                  return a.fold((l) {
                    return Text(l.toString());
                  }, (r) {
                    log('Location: $r');
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

                    return BlocBuilder<BusLocationBloc, BusLocationState>(
                      builder: (context, state) {
                        log(state.toString());
                        return state.getBusLocationModel.fold(() {
                          return const SizedBox();
                        }, (a) {
                          return a.fold((l) {
                            return Text(l.toString());
                          }, (busLocation) {
                            // if (_updated) {
                            //   updatedMap();
                            // }
                            //getPolyPoints(busLocation);
                            return GoogleMap(
                              myLocationButtonEnabled: true,
                              trafficEnabled: true,
                              initialCameraPosition: CameraPosition(
                                target: LatLng(r.latitude, r.longitude),
                                zoom: 18.0,
                              ),
                              markers: {
                                Marker(
                                  markerId: const MarkerId("currentLocation"),
                                  position: LatLng(r.latitude, r.longitude),
                                  icon: studentLocationIcon,
                                ),
                                Marker(
                                  markerId: const MarkerId("BusLocation"),
                                  position: LatLng(busLocation.latitude,
                                      busLocation.longitude),
                                  icon: busLocationIcon,
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
                               // _updated = true;
                              },
                            
                            );
                          });
                        });
                      },
                    );
                  });
                });
              },
            ))
          ],
        ));
  }
}
