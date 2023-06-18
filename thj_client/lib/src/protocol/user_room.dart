/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class UserRoom extends _i1.SerializableEntity {
  UserRoom({
    this.id,
    required this.socId,
    required this.userId,
    required this.roomId,
    required this.fromDate,
    required this.toDate,
    required this.ownership,
    required this.isResident,
    required this.isRental,
  });

  factory UserRoom.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserRoom(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      roomId:
          serializationManager.deserialize<int>(jsonSerialization['roomId']),
      fromDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['fromDate']),
      toDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['toDate']),
      ownership: serializationManager
          .deserialize<bool>(jsonSerialization['ownership']),
      isResident: serializationManager
          .deserialize<bool>(jsonSerialization['isResident']),
      isRental:
          serializationManager.deserialize<bool>(jsonSerialization['isRental']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int socId;

  int userId;

  int roomId;

  DateTime fromDate;

  DateTime toDate;

  bool ownership;

  bool isResident;

  bool isRental;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate,
      'toDate': toDate,
      'ownership': ownership,
      'isResident': isResident,
      'isRental': isRental,
    };
  }
}
