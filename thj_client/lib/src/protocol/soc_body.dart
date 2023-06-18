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
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      chairman:
          serializationManager.deserialize<int>(jsonSerialization['chairman']),
      secretary:
          serializationManager.deserialize<int>(jsonSerialization['secretary']),
      treasurer:
          serializationManager.deserialize<int>(jsonSerialization['treasurer']),
      viceChairman: serializationManager
          .deserialize<int>(jsonSerialization['viceChairman']),
      viceSecretary: serializationManager
          .deserialize<int>(jsonSerialization['viceSecretary']),
      viceTreasurer: serializationManager
          .deserialize<int>(jsonSerialization['viceTreasurer']),
      members: serializationManager
          .deserialize<List<int>>(jsonSerialization['members']),
      year: serializationManager.deserialize<int>(jsonSerialization['year']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int socId;

  int chairman;

  int secretary;

  int treasurer;

  int viceChairman;

  int viceSecretary;

  int viceTreasurer;

  List<int> members;

  int year;

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
