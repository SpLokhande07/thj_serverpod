/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Members extends _i1.SerializableEntity {
  Members({
    this.id,
    required this.name,
    required this.age,
    required this.mobile,
    required this.email,
    required this.aadharNo,
    required this.panNo,
    required this.dob,
    required this.blockCount,
    required this.mobileModel,
    required this.status,
    required this.isActive,
  });

  factory Members.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Members(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      age: serializationManager.deserialize<int>(jsonSerialization['age']),
      mobile:
          serializationManager.deserialize<String>(jsonSerialization['mobile']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      aadharNo: serializationManager
          .deserialize<String>(jsonSerialization['aadharNo']),
      panNo:
          serializationManager.deserialize<String>(jsonSerialization['panNo']),
      dob: serializationManager.deserialize<DateTime>(jsonSerialization['dob']),
      blockCount: serializationManager
          .deserialize<int>(jsonSerialization['blockCount']),
      mobileModel: serializationManager
          .deserialize<String>(jsonSerialization['mobileModel']),
      status:
          serializationManager.deserialize<bool>(jsonSerialization['status']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int age;

  String mobile;

  String email;

  String aadharNo;

  String panNo;

  DateTime dob;

  int blockCount;

  String mobileModel;

  bool status;

  bool isActive;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob,
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
      'isActive': isActive,
    };
  }
}
