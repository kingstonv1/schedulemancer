class Session {
  late DateTime time;
  late String timeString;
  late List<String> players;

  Session(int unixTimestamp, List<String> userIds) {
    time = DateTime.fromMillisecondsSinceEpoch(unixTimestamp);
    timeString = '${time.weekday}, ${time.month} ${time.day} @ ${time.hour}:${time.minute}';
    players = userIds;
  }
}