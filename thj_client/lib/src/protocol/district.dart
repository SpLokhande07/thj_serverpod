/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class District extends _i1.SerializableEntity {
  District({
    this.id,
    required this.stateId,
    required this.district,
  });

  factory District.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return District(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      stateId:
          serializationManager.deserialize<int>(jsonSerialization['stateId']),
      district: serializationManager
          .deserialize<String>(jsonSerialization['district']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int stateId;

  String district;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'stateId': stateId,
      'district': district,
    };
  }
}
