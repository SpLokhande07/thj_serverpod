/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SocietyAmenities extends _i1.SerializableEntity {
  SocietyAmenities({
    this.id,
    required this.socId,
    required this.bikeParking,
    required this.carParking,
    required this.powerBackup,
    required this.securitySystem,
    required this.lift,
    required this.waterSupplyAllDay,
    required this.gym,
    required this.solarEnergy,
    required this.rainwaterHarvesting,
    required this.nearbyHospital,
    required this.nearbySchool,
    required this.nearbyShopping,
    required this.onSitMaintenance,
  });

  factory SocietyAmenities.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SocietyAmenities(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      bikeParking: serializationManager
          .deserialize<bool>(jsonSerialization['bikeParking']),
      carParking: serializationManager
          .deserialize<bool>(jsonSerialization['carParking']),
      powerBackup: serializationManager
          .deserialize<bool>(jsonSerialization['powerBackup']),
      securitySystem: serializationManager
          .deserialize<bool>(jsonSerialization['securitySystem']),
      lift: serializationManager.deserialize<bool>(jsonSerialization['lift']),
      waterSupplyAllDay: serializationManager
          .deserialize<bool>(jsonSerialization['waterSupplyAllDay']),
      gym: serializationManager.deserialize<bool>(jsonSerialization['gym']),
      solarEnergy: serializationManager
          .deserialize<bool>(jsonSerialization['solarEnergy']),
      rainwaterHarvesting: serializationManager
          .deserialize<bool>(jsonSerialization['rainwaterHarvesting']),
      nearbyHospital: serializationManager
          .deserialize<bool>(jsonSerialization['nearbyHospital']),
      nearbySchool: serializationManager
          .deserialize<bool>(jsonSerialization['nearbySchool']),
      nearbyShopping: serializationManager
          .deserialize<bool>(jsonSerialization['nearbyShopping']),
      onSitMaintenance: serializationManager
          .deserialize<bool>(jsonSerialization['onSitMaintenance']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int socId;

  bool bikeParking;

  bool carParking;

  bool powerBackup;

  bool securitySystem;

  bool lift;

  bool waterSupplyAllDay;

  bool gym;

  bool solarEnergy;

  bool rainwaterHarvesting;

  bool nearbyHospital;

  bool nearbySchool;

  bool nearbyShopping;

  bool onSitMaintenance;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
    };
  }
}
