/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class State extends _i1.SerializableEntity {
  State({
    this.id,
    required this.countryId,
    required this.state,
    required this.stateId,
  });

  factory State.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return State(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      countryId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['countryId']),
      state:
          serializationManager.deserialize<String>(jsonSerialization['state']),
      stateId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['stateId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue countryId;

  String state;

  _i1.UuidValue stateId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
      'stateId': stateId,
    };
  }
}
