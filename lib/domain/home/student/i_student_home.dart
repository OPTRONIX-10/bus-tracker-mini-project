import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/home/student/model/model.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

abstract class IStudentHomeRepo {
  Future<Either<MainFailure, LatLng>> getCurrentLocation();
  Future<bool> getLocationPermission();
  Future<Either<MainFailure, LatLng>> convertLatLngToScreenCoordinates(
      {required GoogleMapController mapController, required LatLng position});
  Future<Either<MainFailure, void>> listenLocation();
  Stream<LocationModel> get locationStream;
  LocationModel locationDataFromSnapshots(DocumentSnapshot snapshot);
  Future<void> stopListening();
  Stream<LocationModel>  get busLocationStream;
  LocationModel busLocationDataFromSnapshots(DocumentSnapshot snapshot);
  Future<Either<MainFailure, StaffDetialModel>> getStaffDetails();

}
