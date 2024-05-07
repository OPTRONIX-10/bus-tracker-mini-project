import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/application/home/student/student_home/student_home_bloc.dart';
import 'package:mini_project/application/home/student/student_staff_detail/staff_detail_bloc.dart';
import 'package:mini_project/domain/constants/api_key.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/routes/routes.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng destination = LatLng(9.3173, 76.6175);
  bool _updated = false;

  List<LatLng> polylineCoordinates = [];

  void getPolyPoints(LocationModel busLocation) async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      GoogleMapsApiKey,
      PointLatLng(busLocation.latitude, busLocation.longitude),
      PointLatLng(9.3173, 76.6175),
    );
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<StudentHomeBloc>().add(StudentHomeEvent.getCurrentLocation());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<StudentHomeBloc>()
          .add(StudentHomeEvent.locationUpdateSuccess());
      context.read<StaffDetailBloc>().add(StaffDetailEvent.fetchStaffDetail());
    });
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
                child: BlocBuilder<StaffDetailBloc, StaffDetailState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return state.staffDetailsFetched.fold(() {
                      return SizedBox();
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
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '+91 ${r.phone}',
                                  style: TextStyle(
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
                  Center(child: CircularProgressIndicator());
                }
                return state.getLocationModel.fold(() {
                  return SizedBox();
                }, (a) {
                  return a.fold((l) {
                    return Text(l.toString());
                  }, (r) {
                    Future updatedMap() async {
                      final gMapController = await _controller.future;

                      await gMapController.animateCamera(
                          CameraUpdate.newCameraPosition(CameraPosition(
                              target: LatLng(
                                r.latitude,
                                r.longitude,
                              ),
                              zoom: 18.0)));
                    }

                    if (_updated) {
                      updatedMap();
                    }
                    //getPolyPoints(r);
                    return GoogleMap(
                      myLocationButtonEnabled: true,
                      trafficEnabled: true,
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
                          markerId: MarkerId("Destination"),
                          position: LatLng(
                              destination.latitude, destination.longitude),
                        ),
                      },
                      onMapCreated: (mapController) async {
                        _controller.complete(mapController);
                        _updated = true;
                      },
                      polylines: {
                        Polyline(
                          polylineId: const PolylineId("route"),
                          points: polylineCoordinates,
                          color: const Color(0xFF7B61FF),
                          width: 6,
                        ),
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
