import 'classes/Meal.dart';
import 'classes/Smartphone.dart';

void main() {
  Smartphone smartphone = new Smartphone('iPhone 13 Mini');
  smartphone.printPhoneInfo();

  Meal meal = new Meal(['김치찌개', '된장찌개', '제육볶음']);
  meal.printDishes();
}
