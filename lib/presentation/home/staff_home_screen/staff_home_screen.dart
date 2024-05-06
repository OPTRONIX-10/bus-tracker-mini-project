import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/application/auth/auth/auth_bloc.dart';
import 'package:mini_project/application/home/staff/staff_home/staff_home_bloc.dart';
import 'package:mini_project/domain/constants/api_key.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/routes/routes.dart';
import 'package:mini_project/presentation/home/staff_home_screen/widgets/loading_loaction_widget.dart';

class StaffHomePage extends StatelessWidget {
  StaffHomePage({super.key});
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng destination = LatLng(9.3173, 76.6175);
  bool _updated = false;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

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

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, "assets/bus_image.png")
        .then(
      (icon) {
        currentLocationIcon = icon;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    context.read<StaffHomeBloc>().add(StaffHomeEvent.getCurrentLocation());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setCustomMarkerIcon();
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
                      icon: currentLocationIcon,
                      position: LatLng(r.latitude, r.longitude),
                    ),
                    Marker(
                      markerId: MarkerId("Destination"),
                      position:
                          LatLng(destination.latitude, destination.longitude),
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
        ));
  }
}
