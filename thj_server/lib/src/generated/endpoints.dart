/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/area.dart' as _i2;
import '../endpoints/city.dart' as _i3;
import '../endpoints/country.dart' as _i4;
import '../endpoints/district.dart' as _i5;
import '../endpoints/society_endpoint.dart' as _i6;
import '../endpoints/state.dart' as _i7;
import '../endpoints/user_endpoint.dart' as _i8;
import 'package:thj_server/src/generated/area.dart' as _i9;
import 'package:thj_server/src/generated/city.dart' as _i10;
import 'package:thj_server/src/generated/country.dart' as _i11;
import 'package:thj_server/src/generated/district.dart' as _i12;
import 'package:thj_server/src/generated/state.dart' as _i13;
import 'package:thj_server/src/generated/members.dart' as _i14;
import 'package:serverpod_auth_server/module.dart' as _i15;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'area': _i2.AreaEndpoint()
        ..initialize(
          server,
          'area',
          null,
        ),
      'city': _i3.CityEndpoint()
        ..initialize(
          server,
          'city',
          null,
        ),
      'country': _i4.CountryEndpoint()
        ..initialize(
          server,
          'country',
          null,
        ),
      'district': _i5.DistrictEndpoint()
        ..initialize(
          server,
          'district',
          null,
        ),
      'society': _i6.SocietyEndpoint()
        ..initialize(
          server,
          'society',
          null,
        ),
      'state': _i7.StateEndpoint()
        ..initialize(
          server,
          'state',
          null,
        ),
      'members': _i8.MembersEndpoint()
        ..initialize(
          server,
          'members',
          null,
        ),
    };
    connectors['area'] = _i1.EndpointConnector(
      name: 'area',
      endpoint: endpoints['area']!,
      methodConnectors: {
        'addArea': _i1.MethodConnector(
          name: 'addArea',
          params: {
            'area': _i1.ParameterDescription(
              name: 'area',
              type: _i1.getType<_i9.Area>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i2.AreaEndpoint).addArea(
            session,
            params['area'],
          ),
        ),
        'getArea': _i1.MethodConnector(
          name: 'getArea',
          params: {
            'cityId': _i1.ParameterDescription(
              name: 'cityId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i2.AreaEndpoint).getArea(
            session,
            params['cityId'],
            keyword: params['keyword'],
          ),
        ),
        'updateArea': _i1.MethodConnector(
          name: 'updateArea',
          params: {
            'area': _i1.ParameterDescription(
              name: 'area',
              type: _i1.getType<_i9.Area>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i2.AreaEndpoint).updateArea(
            session,
            params['area'],
          ),
        ),
        'deleteArea': _i1.MethodConnector(
          name: 'deleteArea',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i2.AreaEndpoint).deleteArea(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['city'] = _i1.EndpointConnector(
      name: 'city',
      endpoint: endpoints['city']!,
      methodConnectors: {
        'addCity': _i1.MethodConnector(
          name: 'addCity',
          params: {
            'city': _i1.ParameterDescription(
              name: 'city',
              type: _i1.getType<_i10.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i3.CityEndpoint).addCity(
            session,
            params['city'],
          ),
        ),
        'getAllCity': _i1.MethodConnector(
          name: 'getAllCity',
          params: {
            'areaId': _i1.ParameterDescription(
              name: 'areaId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i3.CityEndpoint).getAllCity(
            session,
            params['areaId'],
            keyword: params['keyword'],
          ),
        ),
        'updateCity': _i1.MethodConnector(
          name: 'updateCity',
          params: {
            'city': _i1.ParameterDescription(
              name: 'city',
              type: _i1.getType<_i10.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i3.CityEndpoint).updateCity(
            session,
            params['city'],
          ),
        ),
        'deleteCity': _i1.MethodConnector(
          name: 'deleteCity',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i3.CityEndpoint).deleteCity(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['country'] = _i1.EndpointConnector(
      name: 'country',
      endpoint: endpoints['country']!,
      methodConnectors: {
        'addCountry': _i1.MethodConnector(
          name: 'addCountry',
          params: {
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<_i11.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i4.CountryEndpoint).addCountry(
            session,
            params['country'],
          ),
        ),
        'getCountry': _i1.MethodConnector(
          name: 'getCountry',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i4.CountryEndpoint).getCountry(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateCountry': _i1.MethodConnector(
          name: 'updateCountry',
          params: {
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<_i11.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i4.CountryEndpoint).updateCountry(
            session,
            params['country'],
          ),
        ),
        'deleteCountry': _i1.MethodConnector(
          name: 'deleteCountry',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i4.CountryEndpoint).deleteCountry(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['district'] = _i1.EndpointConnector(
      name: 'district',
      endpoint: endpoints['district']!,
      methodConnectors: {
        'addDistrict': _i1.MethodConnector(
          name: 'addDistrict',
          params: {
            'district': _i1.ParameterDescription(
              name: 'district',
              type: _i1.getType<_i12.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i5.DistrictEndpoint).addDistrict(
            session,
            params['district'],
          ),
        ),
        'getDistrict': _i1.MethodConnector(
          name: 'getDistrict',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i5.DistrictEndpoint).getDistrict(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateDistrict': _i1.MethodConnector(
          name: 'updateDistrict',
          params: {
            'district': _i1.ParameterDescription(
              name: 'district',
              type: _i1.getType<_i12.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i5.DistrictEndpoint).updateDistrict(
            session,
            params['district'],
          ),
        ),
        'deleteDistrict': _i1.MethodConnector(
          name: 'deleteDistrict',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i5.DistrictEndpoint).deleteDistrict(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['society'] = _i1.EndpointConnector(
      name: 'society',
      endpoint: endpoints['society']!,
      methodConnectors: {},
    );
    connectors['state'] = _i1.EndpointConnector(
      name: 'state',
      endpoint: endpoints['state']!,
      methodConnectors: {
        'addState': _i1.MethodConnector(
          name: 'addState',
          params: {
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<_i13.State>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i7.StateEndpoint).addState(
            session,
            params['state'],
          ),
        ),
        'getState': _i1.MethodConnector(
          name: 'getState',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i7.StateEndpoint).getState(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateState': _i1.MethodConnector(
          name: 'updateState',
          params: {
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<_i13.State>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i7.StateEndpoint).updateState(
            session,
            params['state'],
          ),
        ),
        'deleteState': _i1.MethodConnector(
          name: 'deleteState',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i7.StateEndpoint).deleteState(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['members'] = _i1.EndpointConnector(
      name: 'members',
      endpoint: endpoints['members']!,
      methodConnectors: {
        'getMembers': _i1.MethodConnector(
          name: 'getMembers',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i8.MembersEndpoint).getMembers(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addMembers': _i1.MethodConnector(
          name: 'addMembers',
          params: {
            'users': _i1.ParameterDescription(
              name: 'users',
              type: _i1.getType<_i14.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i8.MembersEndpoint).addMembers(
            session,
            params['users'],
          ),
        ),
        'updateMembers': _i1.MethodConnector(
          name: 'updateMembers',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i14.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i8.MembersEndpoint).updateMembers(
            session,
            params['user'],
          ),
        ),
        'deleteMembers': _i1.MethodConnector(
          name: 'deleteMembers',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i8.MembersEndpoint).deleteMembers(
            session,
            params['id'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i15.Endpoints()..initializeEndpoints(server);
  }
}
