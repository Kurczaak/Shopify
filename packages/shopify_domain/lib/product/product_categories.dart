enum Categories {
  bio,
  fruits,
  vegetables,
  meat,
  fishAndSeafood,
  coldCuts,
  dairy,
  bread,
  cakes,
  fatsAndOils,
  frozenProducts,
  coffeeTea,
  sweets,
  drinkables,
  pastaRiceGroats,
  jamsAndHoney,
  flourSugarSalt,
  spices,
  sauces,
  saltySnacks,
  baking,
  readyMeals,
  cannedFood,
  forKids,
  forPets,
  cleaningChemicals,
  cosmetics,
  beers,
  wines,
  otherAlcohols,
}

extension StringifyCategoriesX on Enum {
  String get stringifiedName {
    switch (this) {
      case Categories.bio:
        return 'Bio';
      case Categories.fruits:
        return 'Fruits';
      case Categories.vegetables:
        return 'Vegetables';
      case Categories.meat:
        return 'Meat';
      case Categories.fishAndSeafood:
        return 'Fish and Seafood';
      case Categories.coldCuts:
        return 'Cold cuts';
      case Categories.dairy:
        return 'Dairy';
      case Categories.bread:
        return 'Bread';
      case Categories.cakes:
        return 'Cakes';
      case Categories.fatsAndOils:
        return 'Fats and Oils';
      case Categories.frozenProducts:
        return 'Frozen products';
      case Categories.coffeeTea:
        return 'Coffee and Tea';
      case Categories.sweets:
        return 'Sweets';
      case Categories.drinkables:
        return 'Water and drinks';
      case Categories.pastaRiceGroats:
        return 'Pasta, Rice and Groats';
      case Categories.jamsAndHoney:
        return 'Jams and Honey';
      case Categories.flourSugarSalt:
        return 'Flour, Sugar, Salt';
      case Categories.spices:
        return 'Spices';
      case Categories.sauces:
        return 'Ketchup, Mayonnaise and Sauces';
      case Categories.saltySnacks:
        return 'Chips and Salty Snacks';
      case Categories.baking:
        return 'Baking products';
      case Categories.readyMeals:
        return 'Ready Meals';
      case Categories.cannedFood:
        return 'Canned Products';
      case Categories.forKids:
        return 'For Kids';
      case Categories.forPets:
        return 'For Pets';
      case Categories.cleaningChemicals:
        return 'Cleaning and Chemicals';
      case Categories.cosmetics:
        return 'Cosmetics';
      case Categories.beers:
        return 'Beers';
      case Categories.wines:
        return 'Wines';
      case Categories.otherAlcohols:
        return 'Other Alcohols';

      default:
        throw UnimplementedError(
            'An error occuerd when category name stringifying. Failed value: ${this}');
    }
  }
}
