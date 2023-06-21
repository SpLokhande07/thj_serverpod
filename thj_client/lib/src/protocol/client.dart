/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:thj_client/src/protocol/area.dart' as _i3;
import 'package:thj_client/src/protocol/city.dart' as _i4;
import 'package:thj_client/src/protocol/country.dart' as _i5;
import 'package:thj_client/src/protocol/district.dart' as _i6;
import 'package:thj_client/src/protocol/state.dart' as _i7;
import 'package:thj_client/src/protocol/members.dart' as _i8;
import 'package:serverpod_auth_client/module.dart' as _i9;
import 'dart:io' as _i10;
import 'protocol.dart' as _i11;

class _EndpointArea extends _i1.EndpointRef {
  _EndpointArea(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'area';

  _i2.Future<bool> addArea(_i3.Area area) => caller.callServerEndpoint<bool>(
        'area',
        'addArea',
        {'area': area},
      );

  _i2.Future<List<_i3.Area>> getArea(
    String cityId, {
    String? keyword,
  }) =>
      caller.callServerEndpoint<List<_i3.Area>>(
        'area',
        'getArea',
        {
          'cityId': cityId,
          'keyword': keyword,
        },
      );

  _i2.Future<bool> updateArea(_i3.Area area) => caller.callServerEndpoint<bool>(
        'area',
        'updateArea',
        {'area': area},
      );

  _i2.Future<bool> deleteArea(int id) => caller.callServerEndpoint<bool>(
        'area',
        'deleteArea',
        {'id': id},
      );
}

class _EndpointCity extends _i1.EndpointRef {
  _EndpointCity(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'city';

  _i2.Future<bool> addCity(_i4.City city) => caller.callServerEndpoint<bool>(
        'city',
        'addCity',
        {'city': city},
      );

  _i2.Future<List<_i4.City>> getAllCity(
    int areaId, {
    String? keyword,
  }) =>
      caller.callServerEndpoint<List<_i4.City>>(
        'city',
        'getAllCity',
        {
          'areaId': areaId,
          'keyword': keyword,
        },
      );

  _i2.Future<bool> updateCity(_i4.City city) => caller.callServerEndpoint<bool>(
        'city',
        'updateCity',
        {'city': city},
      );

  _i2.Future<bool> deleteCity(int id) => caller.callServerEndpoint<bool>(
        'city',
        'deleteCity',
        {'id': id},
      );
}

class _EndpointCountry extends _i1.EndpointRef {
  _EndpointCountry(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'country';

  _i2.Future<bool> addCountry(_i5.Country country) =>
      caller.callServerEndpoint<bool>(
        'country',
        'addCountry',
        {'country': country},
      );

  _i2.Future<List<_i5.Country>> getCountry({String? keyword}) =>
      caller.callServerEndpoint<List<_i5.Country>>(
        'country',
        'getCountry',
        {'keyword': keyword},
      );

  _i2.Future<bool> updateCountry(_i5.Country country) =>
      caller.callServerEndpoint<bool>(
        'country',
        'updateCountry',
        {'country': country},
      );

  _i2.Future<bool> deleteCountry(int id) => caller.callServerEndpoint<bool>(
        'country',
        'deleteCountry',
        {'id': id},
      );
}

class _EndpointDistrict extends _i1.EndpointRef {
  _EndpointDistrict(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'district';

  _i2.Future<bool> addDistrict(_i6.District district) =>
      caller.callServerEndpoint<bool>(
        'district',
        'addDistrict',
        {'district': district},
      );

  _i2.Future<List<_i6.District>> getDistrict({String? keyword}) =>
      caller.callServerEndpoint<List<_i6.District>>(
        'district',
        'getDistrict',
        {'keyword': keyword},
      );

  _i2.Future<bool> updateDistrict(_i6.District district) =>
      caller.callServerEndpoint<bool>(
        'district',
        'updateDistrict',
        {'district': district},
      );

  _i2.Future<bool> deleteDistrict(int id) => caller.callServerEndpoint<bool>(
        'district',
        'deleteDistrict',
        {'id': id},
      );
}

class _EndpointSociety extends _i1.EndpointRef {
  _EndpointSociety(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'society';
}

class _EndpointState extends _i1.EndpointRef {
  _EndpointState(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'state';

  _i2.Future<bool> addState(_i7.State state) => caller.callServerEndpoint<bool>(
        'state',
        'addState',
        {'state': state},
      );

  _i2.Future<List<_i7.State>> getState({String? keyword}) =>
      caller.callServerEndpoint<List<_i7.State>>(
        'state',
        'getState',
        {'keyword': keyword},
      );

  _i2.Future<bool> updateState(_i7.State state) =>
      caller.callServerEndpoint<bool>(
        'state',
        'updateState',
        {'state': state},
      );

  _i2.Future<bool> deleteState(int id) => caller.callServerEndpoint<bool>(
        'state',
        'deleteState',
        {'id': id},
      );
}

class _EndpointMembers extends _i1.EndpointRef {
  _EndpointMembers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'members';

  _i2.Future<List<_i8.Members>> getMembers({String? keyword}) =>
      caller.callServerEndpoint<List<_i8.Members>>(
        'members',
        'getMembers',
        {'keyword': keyword},
      );

  _i2.Future<bool> addMembers(_i8.Members users) =>
      caller.callServerEndpoint<bool>(
        'members',
        'addMembers',
        {'users': users},
      );

  _i2.Future<bool> updateMembers(_i8.Members user) =>
      caller.callServerEndpoint<bool>(
        'members',
        'updateMembers',
        {'user': user},
      );

  _i2.Future<bool> deleteMembers(int id) => caller.callServerEndpoint<bool>(
        'members',
        'deleteMembers',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i9.Caller(client);
  }

  late final _i9.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i10.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i11.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    area = _EndpointArea(this);
    city = _EndpointCity(this);
    country = _EndpointCountry(this);
    district = _EndpointDistrict(this);
    society = _EndpointSociety(this);
    state = _EndpointState(this);
    members = _EndpointMembers(this);
    modules = _Modules(this);
  }

  late final _EndpointArea area;

  late final _EndpointCity city;

  late final _EndpointCountry country;

  late final _EndpointDistrict district;

  late final _EndpointSociety society;

  late final _EndpointState state;

  late final _EndpointMembers members;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'area': area,
        'city': city,
        'country': country,
        'district': district,
        'society': society,
        'state': state,
        'members': members,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
