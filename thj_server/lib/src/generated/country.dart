/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Country extends _i1.TableRow {
  Country({
    int? id,
    required this.areaId,
    required this.cityId,
    required this.districtId,
    required this.stateId,
    required this.country,
  }) : super(id);

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

  static final t = CountryTable();

  int areaId;

  int cityId;

  int districtId;

  int stateId;

  String country;

  @override
  String get tableName => 'country';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'areaId': areaId,
      'cityId': cityId,
      'districtId': districtId,
      'stateId': stateId,
      'country': country,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'areaId':
        areaId = value;
        return;
      case 'cityId':
        cityId = value;
        return;
      case 'districtId':
        districtId = value;
        return;
      case 'stateId':
        stateId = value;
        return;
      case 'country':
        country = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Country>> find(
    _i1.Session session, {
    CountryExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Country>(
      where: where != null ? where(Country.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Country?> findSingleRow(
    _i1.Session session, {
    CountryExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Country>(
      where: where != null ? where(Country.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Country?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Country>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CountryExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Country>(
      where: where(Country.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Country row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Country row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Country row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    CountryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Country>(
      where: where != null ? where(Country.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CountryExpressionBuilder = _i1.Expression Function(CountryTable);

class CountryTable extends _i1.Table {
  CountryTable() : super(tableName: 'country');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final areaId = _i1.ColumnInt('areaId');

  final cityId = _i1.ColumnInt('cityId');

  final districtId = _i1.ColumnInt('districtId');

  final stateId = _i1.ColumnInt('stateId');

  final country = _i1.ColumnString('country');

  @override
  List<_i1.Column> get columns => [
        id,
        areaId,
        cityId,
        districtId,
        stateId,
        country,
      ];
}

@Deprecated('Use CountryTable.t instead.')
CountryTable tCountry = CountryTable();
