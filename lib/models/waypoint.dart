class Waypoint {
  final int number;
  final String title;
  final String subtitle;
  final String time;
  final bool isLast;

  const Waypoint({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.time,
    this.isLast = false,
  });
}
