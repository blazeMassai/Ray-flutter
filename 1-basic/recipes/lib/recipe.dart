

class Recipe {
  int servings;
  List<Ingredient> ingredients;

  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs',
        'assets/tambi.jpg',
            4,
            [
            Ingredient(1, 'box', 'Spaghetti'),
            Ingredient(4, '', 'Frozen Meatballs'),
            Ingredient(0.5, 'jar', 'sauce'),
            ],

    ),
    Recipe('Tomato Soup',
        'assets/sauce.jpg',
        2,
        [
          Ingredient(1, 'can', 'Tomato Soup'),
        ],
    ),

    Recipe('Grilled Cheese',
        'assets/grilled-cheese.jpeg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese'),
        Ingredient(2, 'slices', 'Bread'),
      ],
    ),

    Recipe('Chocolate Chip Cookies',
        'assets/cookies.jpg',
      24,
      [
        Ingredient(4, 'cups', 'flour'),
        Ingredient(2, 'cups', 'sugar'),
        Ingredient(0.5, 'cups', 'chocolate chips'),
      ],
    ),

    Recipe('Taco Salad',
        'assets/taco.jpg',
      1,
      [
        Ingredient(4, 'oz', 'nachos'),
        Ingredient(3, 'oz', 'taco meat'),
        Ingredient(0.5, 'cup', 'cheese'),
        Ingredient(0.25, 'cup', 'chopped tomatoes'),
      ],
    ),

    Recipe('Hawaiian Pizza',
        'assets/pizza.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],),
  ];
}


class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}