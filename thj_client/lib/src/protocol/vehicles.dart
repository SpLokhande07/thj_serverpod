/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Vehicles extends _i1.SerializableEntity {
  Vehicles({
    this.id,
    required this.vehicleNo,
    required this.ownerId,
    required this.roomId,
    required this.vehicleType,
    required this.entryDate,
    required this.updatedDate,
  });

  factory Vehicles.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Vehicles(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      vehicleNo: serializationManager
          .deserialize<String>(jsonSerialization['vehicleNo']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      roomId:
          serializationManager.deserialize<int>(jsonSerialization['roomId']),
      vehicleType: serializationManager
          .deserialize<int>(jsonSerialization['vehicleType']),
      entryDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['entryDate']),
      updatedDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedDate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String vehicleNo;

  int ownerId;

  int roomId;

  int vehicleType;

  DateTime entryDate;

  DateTime updatedDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate,
      'updatedDate': updatedDate,
    };
  }
}
