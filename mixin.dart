import 'classes/Meal.dart';

mixin EnglishMealMixin on Meal {
  void useSpoon() {
    print('use Spoon');
  }
}

class EnglishMeal extends Meal with EnglishMealMixin {
  EnglishMeal(super.dishes);
}

void main() {
  EnglishMeal englishMeal = new EnglishMeal(['kimchi', 'stew', 'pork']);
  englishMeal.useSpoon();
}
