# [코드팩토리][초급] DateTime & Duration

## `DateTime`

```dart
DateTime now = DateTime.now();

print(now); // 2023-01-15 13:51:12.946214
print(now.year); // 2023
print(now.month); // 1
print(now.day); // 15
print(now.hour); // 13
print(now.minute); // 51
print(now.second); // 12
print(now.millisecond); // 946
```

## `Duration`

```dart
Duration duration = Duration(days: 1);

print(duration); // 24:00:00.000000
print(duration.inDays); // 1
print(duration.inHours); // 24
print(duration.inMinutes); // 1440
print(duration.inSeconds); // 86400
print(duration.inMilliseconds); // 86400000
```

## `경과 날짜/시간 구하기`

```dart
DateTime now = DateTime.now();
DateTime specifyDay = DateTime(
  2011,
  1,
  10,
);

print(now); // 2023-01-15 14:02:00.361969
print(specifyDay); // 2011-01-10 00:00:00.000

final difference = now.difference(specifyDay);

print(difference); // 105326:02:00.361969
print(difference.inDays); // 4388
print(difference.inHours); // 105326
print(difference.inMinutes); // 6319562

print(now.isAfter(specifyDay)); // true
print(now.isBefore(specifyDay)); // false
```

## 날짜/시간 계산

```dart
print(now); // 2023-01-15 14:13:56.775863
print(
  now.add(
    Duration(hours: 10),
  ),
); // 2023-01-16 00:13:56.775863
print(
  now.subtract(
    Duration(minutes: 30),
  ),
); // 2023-01-15 13:43:56.775863
```
