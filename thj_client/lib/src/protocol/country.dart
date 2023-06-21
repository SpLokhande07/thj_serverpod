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
    required this.countryId,
  });

  factory Country.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Country(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      areaId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['areaId']),
      cityId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['cityId']),
      districtId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['districtId']),
      stateId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['stateId']),
      country: serializationManager
          .deserialize<String>(jsonSerialization['country']),
      countryId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['countryId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue areaId;

  _i1.UuidValue cityId;

  _i1.UuidValue districtId;

  _i1.UuidValue stateId;

  String country;

  _i1.UuidValue countryId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
      'countryId': countryId,
    };
  }
}
