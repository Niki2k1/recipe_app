import 'package:recipe_app/models/ingredient_model.dart';

class Meal {
  String imageUrl;
  int time;
  String name;
  String description;
  List<Ingredient> ingredients;

  Meal({
    this.imageUrl,
    this.time,
    this.name,
    this.description,
    this.ingredients,
  });
}

List<Meal> meals = [
  Meal(
    imageUrl: 'assets/images/chickenPotatoeBeans.jpg',
    time: 10,
    name: 'Chicken with green beans',
    description: 'Potatoes with green beans and chicken',
    ingredients: ingredients,
  ),
  Meal(
    imageUrl: 'assets/images/chickencurry.jpg',
    time: 20,
    name: 'Chicken curry',
    description: 'Chicken curry with rice and sweet pepper',
    ingredients: ingredients,
  ),
  Meal(
    imageUrl: 'assets/images/potatoesoup.jpg',
    time: 40,
    name: 'Potatoe soup',
    description: 'Delicous potatoe poup',
    ingredients: ingredients,
  ),
  Meal(
    imageUrl: 'assets/images/pizza.jpg',
    time: 40,
    name: 'Pizza',
    description: 'Classic salami pizza',
    ingredients: ingredients,
  )
];

List<Ingredient> ingredients = [
  Ingredient(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Potatoes',
    type: 'vegtables',
  ),
  Ingredient(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Chicken',
    type: 'meat',
  ),
  Ingredient(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Green Beans',
    type: 'vegtables',
  ),
];
