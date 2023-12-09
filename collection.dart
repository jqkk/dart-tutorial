void main() {
  List<int> weeklyStudyTimeList = [6, 2, 2, 2, 2, 2, 6];

  final weeklyStudyTimeTextList = weeklyStudyTimeList
      .map((studyTime) => studyTime.toString() + '시간')
      .toList();
  print(weeklyStudyTimeTextList);

  final totalStudyTime =
      weeklyStudyTimeList.reduce((value, element) => value + element);
  print('이번주 순공시간은 $totalStudyTime시간입니다.');

  Map<String, int> weeklyStudyTimeMap = {
    '월': 2,
    '화': 2,
    '수': 2,
    '목': 2,
    '금': 2,
    '토': 6,
    '일': 6,
  };

  final weekendStudyTimeMap = weeklyStudyTimeMap.entries
      .where((entry) => entry.key == '토' || entry.key == '일')
      .map((item) => item.value)
      .reduce((value, element) => value + element);
  print('이번주 주말 순공시간은 $weekendStudyTimeMap시간입니다.');

  final weeklyStudyTimeSet = weeklyStudyTimeList.toSet();
  final minimumStudyTime = weeklyStudyTimeSet
      .reduce((value, element) => value < element ? value : element);
  final maximumStudyTime = weeklyStudyTimeSet
      .reduce((value, element) => value > element ? value : element);
  print('이번주 최소 순공시간은 $minimumStudyTime시간이고, 최대 순공시간은 $maximumStudyTime시간입니다.');
}
