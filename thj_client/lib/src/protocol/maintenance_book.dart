/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class MaintenanceBook extends _i1.SerializableEntity {
  MaintenanceBook({
    this.id,
    required this.socId,
    required this.receiptId,
    required this.roomNo,
    required this.block,
    required this.year,
    required this.ownerId,
    required this.paymentMode,
    required this.paymentDate,
    required this.collectedBy,
    required this.month,
    required this.penalty,
  });

  factory MaintenanceBook.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MaintenanceBook(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      receiptId:
          serializationManager.deserialize<int>(jsonSerialization['receiptId']),
      roomNo:
          serializationManager.deserialize<int>(jsonSerialization['roomNo']),
      block:
          serializationManager.deserialize<String>(jsonSerialization['block']),
      year: serializationManager.deserialize<int>(jsonSerialization['year']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      paymentMode: serializationManager
          .deserialize<String>(jsonSerialization['paymentMode']),
      paymentDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['paymentDate']),
      collectedBy: serializationManager
          .deserialize<int>(jsonSerialization['collectedBy']),
      month:
          serializationManager.deserialize<String>(jsonSerialization['month']),
      penalty:
          serializationManager.deserialize<int>(jsonSerialization['penalty']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int socId;

  int receiptId;

  int roomNo;

  String block;

  int year;

  int ownerId;

  String paymentMode;

  DateTime paymentDate;

  int collectedBy;

  String month;

  int penalty;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate,
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
    };
  }
}
