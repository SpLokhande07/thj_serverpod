/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class State extends _i1.TableRow {
  State({
    int? id,
    required this.countryId,
    required this.state,
  }) : super(id);

  factory State.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return State(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      countryId:
          serializationManager.deserialize<int>(jsonSerialization['countryId']),
      state:
          serializationManager.deserialize<String>(jsonSerialization['state']),
    );
  }

  static final t = StateTable();

  int countryId;

  String state;

  @override
  String get tableName => 'state';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
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
      case 'countryId':
        countryId = value;
        return;
      case 'state':
        state = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<State>> find(
    _i1.Session session, {
    StateExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<State>(
      where: where != null ? where(State.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<State?> findSingleRow(
    _i1.Session session, {
    StateExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<State>(
      where: where != null ? where(State.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<State?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<State>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required StateExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<State>(
      where: where(State.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    State row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    State row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    State row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    StateExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<State>(
      where: where != null ? where(State.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef StateExpressionBuilder = _i1.Expression Function(StateTable);

class StateTable extends _i1.Table {
  StateTable() : super(tableName: 'state');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final countryId = _i1.ColumnInt('countryId');

  final state = _i1.ColumnString('state');

  @override
  List<_i1.Column> get columns => [
        id,
        countryId,
        state,
      ];
}

@Deprecated('Use StateTable.t instead.')
StateTable tState = StateTable();
