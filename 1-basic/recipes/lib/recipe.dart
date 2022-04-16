class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs',
        'assets/tambi.jpg'),
    Recipe('Tomato Soup',
        'assets/sauce.jpg'),
    Recipe('Grilled Cheese',
        'assets/grilled-cheese.jpeg'),
    Recipe('Chocolate Chip Cookies',
        'assets/cookies.jpg'),
    Recipe('Taco Salad',
        'assets/taco.jpg'),
    Recipe('Hawaiian Pizza',
        'assets/pizza.jpg'),
  ];
}

