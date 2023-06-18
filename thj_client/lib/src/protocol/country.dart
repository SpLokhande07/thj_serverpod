/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Country extends _i1.SerializableEntity {
  Country({
    this.id,
    required this.areaId,
    required this.cityId,
    required this.districtId,
    required this.stateId,
    required this.country,
  });

  factory Country.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Country(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      areaId:
          serializationManager.deserialize<int>(jsonSerialization['areaId']),
      cityId:
          serializationManager.deserialize<int>(jsonSerialization['cityId']),
      districtId: serializationManager
          .deserialize<int>(jsonSerialization['districtId']),
      stateId:
          serializationManager.deserialize<int>(jsonSerialization['stateId']),
      country: serializationManager
          .deserialize<String>(jsonSerialization['country']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int areaId;

  int cityId;

  int districtId;

  int stateId;

  String country;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
    };
  }
}
