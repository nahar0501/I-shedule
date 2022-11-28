class EventInfo {
  final String id;
  final String name;
  final String description;
  final String location;
  final String link;
  final List<dynamic> attendeeEmails;
  final bool shouldNotifyAttendees;
  final int startTimeInEpoch;
  final int endTimeInEpoch;

  EventInfo({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.link,
    required this.attendeeEmails,
    required this.shouldNotifyAttendees,
    required this.startTimeInEpoch,
    required this.endTimeInEpoch,
  });

  EventInfo.fromMap(Map snapshot)
      : id = snapshot['id'] ?? '',
        name = snapshot['name'] ?? '',
        description = snapshot['desc'],
        location = snapshot['loc'],
        link = snapshot['link'],
        attendeeEmails = snapshot['emails'] ?? '',
        shouldNotifyAttendees = snapshot['should_notify'],
        startTimeInEpoch = snapshot['start'],
        endTimeInEpoch = snapshot['end'];

  toJson() {
    return {
      'id': id,
      'name': name,
      'desc': description,
      'loc': location,
      'link': link,
      'emails': attendeeEmails,
      'should_notify': shouldNotifyAttendees,
      'start': startTimeInEpoch,
      'end': endTimeInEpoch,
    };
  }
}
