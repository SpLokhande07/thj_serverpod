/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class MaintainenceCharges extends _i1.SerializableEntity {
  MaintainenceCharges({
    this.id,
    required this.socId,
    required this.fromDate,
    required this.toDate,
    required this.oneBhk,
    required this.twoBhk,
    required this.threeBhk,
    required this.fourBhk,
    required this.persqft,
    required this.twoWheel,
    required this.threeWheel,
    required this.fourWheel,
    required this.other,
    required this.rental,
    required this.nonOccupancy,
    required this.year,
    required this.penalty,
    required this.dueDate,
    required this.isActive,
  });

  factory MaintainenceCharges.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MaintainenceCharges(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      fromDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['fromDate']),
      toDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['toDate']),
      oneBhk:
          serializationManager.deserialize<int>(jsonSerialization['oneBhk']),
      twoBhk:
          serializationManager.deserialize<int>(jsonSerialization['twoBhk']),
      threeBhk:
          serializationManager.deserialize<int>(jsonSerialization['threeBhk']),
      fourBhk:
          serializationManager.deserialize<int>(jsonSerialization['fourBhk']),
      persqft:
          serializationManager.deserialize<int>(jsonSerialization['persqft']),
      twoWheel:
          serializationManager.deserialize<int>(jsonSerialization['twoWheel']),
      threeWheel: serializationManager
          .deserialize<int>(jsonSerialization['threeWheel']),
      fourWheel:
          serializationManager.deserialize<int>(jsonSerialization['fourWheel']),
      other: serializationManager.deserialize<int>(jsonSerialization['other']),
      rental:
          serializationManager.deserialize<int>(jsonSerialization['rental']),
      nonOccupancy: serializationManager
          .deserialize<int>(jsonSerialization['nonOccupancy']),
      year: serializationManager.deserialize<int>(jsonSerialization['year']),
      penalty:
          serializationManager.deserialize<int>(jsonSerialization['penalty']),
      dueDate:
          serializationManager.deserialize<int>(jsonSerialization['dueDate']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int socId;

  DateTime fromDate;

  DateTime toDate;

  int oneBhk;

  int twoBhk;

  int threeBhk;

  int fourBhk;

  int persqft;

  int twoWheel;

  int threeWheel;

  int fourWheel;

  int other;

  int rental;

  int nonOccupancy;

  int year;

  int penalty;

  int dueDate;

  bool isActive;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'fromDate': fromDate,
      'toDate': toDate,
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
    };
  }
}
