 
import 'package:thj_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StateEndpoint extends Endpoint {
  Future<bool> addState(Session session, State state) async {
    await State.insert(session, state);
    return true;
  }

  Future<List<State>> getState(Session session, {String? keyword}) async {
    return await State.find(session,
        where: (t) => keyword != null ? t.state.like(keyword) : Constant(true));
  }

  Future<bool> updateState(Session session, State state) async {
    bool result = await State.update(session, state);
    return result;
  }

  Future<bool> deleteState(Session session, int id) async {
    int result = await State.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
