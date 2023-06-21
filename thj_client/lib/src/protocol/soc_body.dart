/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SocBody extends _i1.SerializableEntity {
  SocBody({
    this.id,
    required this.socId,
    required this.chairman,
    required this.secretary,
    required this.treasurer,
    required this.viceChairman,
    required this.viceSecretary,
    required this.viceTreasurer,
    required this.members,
    required this.year,
  });

  factory SocBody.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SocBody(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['socId']),
      chairman: serializationManager
          .deserialize<String>(jsonSerialization['chairman']),
      secretary: serializationManager
          .deserialize<String>(jsonSerialization['secretary']),
      treasurer: serializationManager
          .deserialize<String>(jsonSerialization['treasurer']),
      viceChairman: serializationManager
          .deserialize<String>(jsonSerialization['viceChairman']),
      viceSecretary: serializationManager
          .deserialize<String>(jsonSerialization['viceSecretary']),
      viceTreasurer: serializationManager
          .deserialize<String>(jsonSerialization['viceTreasurer']),
      members: serializationManager
          .deserialize<List<String>>(jsonSerialization['members']),
      year: serializationManager.deserialize<String>(jsonSerialization['year']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue socId;

  String chairman;

  String secretary;

  String treasurer;

  String viceChairman;

  String viceSecretary;

  String viceTreasurer;

  List<String> members;

  String year;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
    };
  }
}
