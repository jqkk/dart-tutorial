import 'classes/Meal.dart';

void main() {
  final meal = Meal(['김치찌개', '된장찌개', '제육볶음'])
    ..printDishes()
    ..useSpoon()
    ..useChopsticks()
    ..useSpoon();

  print(meal);
}
