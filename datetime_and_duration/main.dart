void main() {
  print('-------DateTime-------');
  DateTime now = DateTime.now(); // 현재 날짜 + 시간

  print(now);
  print(now.year);
  print(now.month);
  print(now.day);
  print(now.hour);
  print(now.minute);
  print(now.second);
  print(now.millisecond);

  print('-------Duration-------');
  Duration duration = Duration(days: 1);

  print(duration);
  print(duration.inDays);
  print(duration.inHours);
  print(duration.inMinutes);
  print(duration.inSeconds);
  print(duration.inMilliseconds);

  print('-------Specify DateTime-------');
  DateTime specifyDay = DateTime(
    2011,
    1,
    10,
  ); // 특정 날짜 지정

  print(now);
  print(specifyDay);

  print('-------Calculating the Period-------');
  final difference = now.difference(specifyDay); // 기간 계산

  print(difference);
  print(difference.inDays);
  print(difference.inHours);
  print(difference.inMinutes);

  print(now.isAfter(specifyDay));
  print(now.isBefore(specifyDay));

  print('-------Addtion of DateTime-------');
  print(now);
  print(
    now.add(
      Duration(hours: 10),
    ),
  );
  print(
    now.subtract(
      Duration(minutes: 30),
    ),
  );
}
