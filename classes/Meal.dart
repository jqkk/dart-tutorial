class Meal {
  List<String> dishes;

  Meal(List<String> dishes) : this.dishes = dishes {
    print('생성자 호출 ${this.dishes}');
  }

  void printDishes() {
    print(this.dishes);
  }

  void useSpoon() {
    print('숟가락을 사용합니다.');
  }

  void useChopsticks() {
    print('젓가락을 사용합니다.');
  }

  void useFork() {
    print('포크를 사용합니다.');
  }

  void useKnife() {
    print('나이프를 사용합니다.');
  }
}
