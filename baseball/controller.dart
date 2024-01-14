import 'dart:io';
import 'Game.dart';
import 'view.dart';

class BaseballController {
  BaseballView view;
  BaseballGame game;

  BaseballController()
      : this.view = new BaseballView(),
        this.game = new BaseballGame();

  void init() {
    this.game.createAnswer();
  }

  void start() {
    while (true) {
      this.view.displayInputPrompt();
      try {
        int input = int.parse(stdin.readLineSync()!);
        if (!validateInput(input: input)) {
          continue;
        }
        if (validateIsAnswer(input: input)) {
          this.view.displayGameEnd();
          this.view.displayControllerPrompt();
          int input = int.parse(stdin.readLineSync()!);
          if (input == 1) {
            restart();
            continue;
          }
          if (input == 2) {
            break;
          }
          this.view.displayInvalidInputError();
        }
      } catch (e) {
        print(e);
        this.view.displayInputTypeError();
      }
    }
  }

  bool validateInput({required int input}) {
    if (input.toString().length != 3) {
      this.view.displayInputNumLengthError();
      return false;
    }
    if (!this.game.validateDuplicate(input: input)) {
      this.view.displayInvalidInputError();
      return false;
    }
    return true;
  }

  bool validateIsAnswer({required int input}) {
    int ballCount = this.game.getBallCount(input: input);
    int strikeCount = this.game.getStrikeCount(input: input);
    this.view.displayBallCount(ballCount: ballCount, strikeCount: strikeCount);
    return strikeCount == 3;
  }

  void restart() {
    this.game.createAnswer();
  }
}
