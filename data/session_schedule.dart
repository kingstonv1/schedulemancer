import 'dart:convert';
import 'dart:io';

import 'session.dart';

class SessionSchedule {
  dynamic _json;
  List<Session> schedule = [];

  SessionSchedule() {
    _json = json.decode(File('./session_schedule.json').readAsStringSync());

    for (int sessionTime in _json) {
      List<String> playerIds = _json[sessionTime]['players'] ?? [];
      schedule.add(Session(sessionTime, playerIds));
    }
  }

  Session? getNextSession() {
    return schedule.isEmpty ? null : schedule[0];
  }
}