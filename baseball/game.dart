import 'dart:math';

class BaseballGame {
  late int _answer;

  void createAnswer() {
    do {
      _answer = Random().nextInt(900) + 100;
    } while (!validateDuplicate(input: _answer));
  }

  List<int> _splitNumToList({required int num}) =>
      num.toString().split('').map(int.parse).toList();

  List<int> get splitAnswer => _splitNumToList(num: _answer);

  bool validateDuplicate({required int input}) {
    final inputList = _splitNumToList(num: input);
    return inputList.toSet().length == inputList.length;
  }

  int getStrikeCount({required int input}) => _splitNumToList(num: input)
      .asMap()
      .entries
      .where((entry) => entry.value == splitAnswer[entry.key])
      .length;

  int getBallCount({required int input}) => _splitNumToList(num: input)
      .asMap()
      .entries
      .where((entry) => entry.value != splitAnswer[entry.key])
      .where((entry) => splitAnswer.contains(entry.value))
      .length;
}
