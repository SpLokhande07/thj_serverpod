/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Address extends _i1.SerializableEntity {
  Address({
    this.id,
    required this.addressId,
    required this.areaId,
    required this.wardId,
    required this.cityId,
    required this.mcId,
    required this.districtId,
    required this.stateId,
    required this.countryId,
    required this.fullAddress,
    required this.landmark,
    required this.pincode,
  });

  factory Address.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Address(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      addressId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['addressId']),
      areaId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['areaId']),
      wardId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['wardId']),
      cityId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['cityId']),
      mcId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['mcId']),
      districtId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['districtId']),
      stateId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['stateId']),
      countryId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['countryId']),
      fullAddress: serializationManager
          .deserialize<String>(jsonSerialization['fullAddress']),
      landmark: serializationManager
          .deserialize<String>(jsonSerialization['landmark']),
      pincode:
          serializationManager.deserialize<int>(jsonSerialization['pincode']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue addressId;

  _i1.UuidValue areaId;

  _i1.UuidValue wardId;

  _i1.UuidValue cityId;

  _i1.UuidValue mcId;

  _i1.UuidValue districtId;

  _i1.UuidValue stateId;

  _i1.UuidValue countryId;

  String fullAddress;

  String landmark;

  int pincode;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'addressId': addressId,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
    };
  }
}
