import 'dart:io';

class BaseballView {
  final int numLength;

  BaseballView({this.numLength = 3});

  void displayInputPrompt() {
    stdout.write('숫자를 입력해주세요 : ');
  }

  void displayBallCount({required int ballCount, required strikeCount}) {
    print('$ballCount볼 $strikeCount스트라이크');
  }

  void displayGameEnd() {
    print('${this.numLength}개의 숫자를 모두 맞히셨습니다! 게임 종료');
  }

  void displayControllerPrompt() {
    print('게임을 새로 시작하려면 1, 종료하려면 2를 입력하세요.');
  }

  void displayInputTypeError() {
    print('\x1B[31m숫자를 입력해주세요.\x1B[0m');
  }

  void displayInputNumLengthError() {
    print('\x1B[31m${this.numLength}자리 숫자를 입력해주세요.\x1B[0m');
  }

  void displayInvalidInputError() {
    print('\x1B[31m잘못된 입력입니다.\x1B[0m');
  }
}
