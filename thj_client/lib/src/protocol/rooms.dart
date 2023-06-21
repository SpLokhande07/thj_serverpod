/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Rooms extends _i1.SerializableEntity {
  Rooms({
    this.id,
    required this.socId,
    required this.roomId,
    required this.roomNo,
    required this.owner,
    required this.onRent,
    required this.onSale,
    required this.carpetArea,
    required this.roomStructure,
    required this.balcony,
    required this.isOccupied,
    required this.totalMembers,
    required this.roomExist,
    required this.ownerId,
    required this.membersId,
    required this.rentalId,
  });

  factory Rooms.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Rooms(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['socId']),
      roomId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['roomId']),
      roomNo:
          serializationManager.deserialize<int>(jsonSerialization['roomNo']),
      owner:
          serializationManager.deserialize<String>(jsonSerialization['owner']),
      onRent:
          serializationManager.deserialize<bool>(jsonSerialization['onRent']),
      onSale:
          serializationManager.deserialize<bool>(jsonSerialization['onSale']),
      carpetArea: serializationManager
          .deserialize<int>(jsonSerialization['carpetArea']),
      roomStructure: serializationManager
          .deserialize<String>(jsonSerialization['roomStructure']),
      balcony:
          serializationManager.deserialize<bool>(jsonSerialization['balcony']),
      isOccupied: serializationManager
          .deserialize<bool>(jsonSerialization['isOccupied']),
      totalMembers: serializationManager
          .deserialize<int>(jsonSerialization['totalMembers']),
      roomExist: serializationManager
          .deserialize<bool>(jsonSerialization['roomExist']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      membersId: serializationManager
          .deserialize<List<int>>(jsonSerialization['membersId']),
      rentalId: serializationManager
          .deserialize<List<int>>(jsonSerialization['rentalId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue socId;

  _i1.UuidValue roomId;

  int roomNo;

  String owner;

  bool onRent;

  bool onSale;

  int carpetArea;

  String roomStructure;

  bool balcony;

  bool isOccupied;

  int totalMembers;

  bool roomExist;

  int ownerId;

  List<int> membersId;

  List<int> rentalId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'roomId': roomId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
    };
  }
}
