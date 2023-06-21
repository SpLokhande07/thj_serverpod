/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Area extends _i1.SerializableEntity {
  Area({
    this.id,
    required this.areaId,
    required this.area,
    required this.cityId,
  });

  factory Area.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Area(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      areaId: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['areaId']),
      area: serializationManager.deserialize<String>(jsonSerialization['area']),
      cityId:
          serializationManager.deserialize<String>(jsonSerialization['cityId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i1.UuidValue areaId;

  String area;

  String cityId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'areaId': areaId,
      'area': area,
      'cityId': cityId,
    };
  }
}
