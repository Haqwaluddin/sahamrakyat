class Soal4 {
  List<Mealsss>? meals;

  Soal4({this.meals});

  Soal4.fromJson(Map<String, dynamic> json) {
    this.meals = json["meals"]==null ? null : (json["meals"] as List).map((e)=>Mealsss.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.meals != null)
      data["meals"] = this.meals?.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Mealsss {
  String? idMeal;
  String? strMeal;
  dynamic? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  dynamic? strIngredient16;
  dynamic? strIngredient17;
  dynamic? strIngredient18;
  dynamic? strIngredient19;
  dynamic? strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  dynamic? strMeasure16;
  dynamic? strMeasure17;
  dynamic? strMeasure18;
  dynamic? strMeasure19;
  dynamic? strMeasure20;
  dynamic? strSource;
  dynamic? strImageSource;
  dynamic? strCreativeCommonsConfirmed;
  dynamic? dateModified;

  Mealsss({this.idMeal, this.strMeal, this.strDrinkAlternate, this.strCategory, this.strArea, this.strInstructions, this.strMealThumb, this.strTags, this.strYoutube, this.strIngredient1, this.strIngredient2, this.strIngredient3, this.strIngredient4, this.strIngredient5, this.strIngredient6, this.strIngredient7, this.strIngredient8, this.strIngredient9, this.strIngredient10, this.strIngredient11, this.strIngredient12, this.strIngredient13, this.strIngredient14, this.strIngredient15, this.strIngredient16, this.strIngredient17, this.strIngredient18, this.strIngredient19, this.strIngredient20, this.strMeasure1, this.strMeasure2, this.strMeasure3, this.strMeasure4, this.strMeasure5, this.strMeasure6, this.strMeasure7, this.strMeasure8, this.strMeasure9, this.strMeasure10, this.strMeasure11, this.strMeasure12, this.strMeasure13, this.strMeasure14, this.strMeasure15, this.strMeasure16, this.strMeasure17, this.strMeasure18, this.strMeasure19, this.strMeasure20, this.strSource, this.strImageSource, this.strCreativeCommonsConfirmed, this.dateModified});

  Mealsss.fromJson(Map<String, dynamic> json) {
    this.idMeal = json["idMeal"];
    this.strMeal = json["strMeal"];
    this.strDrinkAlternate = json["strDrinkAlternate"];
    this.strCategory = json["strCategory"];
    this.strArea = json["strArea"];
    this.strInstructions = json["strInstructions"];
    this.strMealThumb = json["strMealThumb"];
    this.strTags = json["strTags"];
    this.strYoutube = json["strYoutube"];
    this.strIngredient1 = json["strIngredient1"];
    this.strIngredient2 = json["strIngredient2"];
    this.strIngredient3 = json["strIngredient3"];
    this.strIngredient4 = json["strIngredient4"];
    this.strIngredient5 = json["strIngredient5"];
    this.strIngredient6 = json["strIngredient6"];
    this.strIngredient7 = json["strIngredient7"];
    this.strIngredient8 = json["strIngredient8"];
    this.strIngredient9 = json["strIngredient9"];
    this.strIngredient10 = json["strIngredient10"];
    this.strIngredient11 = json["strIngredient11"];
    this.strIngredient12 = json["strIngredient12"];
    this.strIngredient13 = json["strIngredient13"];
    this.strIngredient14 = json["strIngredient14"];
    this.strIngredient15 = json["strIngredient15"];
    this.strIngredient16 = json["strIngredient16"];
    this.strIngredient17 = json["strIngredient17"];
    this.strIngredient18 = json["strIngredient18"];
    this.strIngredient19 = json["strIngredient19"];
    this.strIngredient20 = json["strIngredient20"];
    this.strMeasure1 = json["strMeasure1"];
    this.strMeasure2 = json["strMeasure2"];
    this.strMeasure3 = json["strMeasure3"];
    this.strMeasure4 = json["strMeasure4"];
    this.strMeasure5 = json["strMeasure5"];
    this.strMeasure6 = json["strMeasure6"];
    this.strMeasure7 = json["strMeasure7"];
    this.strMeasure8 = json["strMeasure8"];
    this.strMeasure9 = json["strMeasure9"];
    this.strMeasure10 = json["strMeasure10"];
    this.strMeasure11 = json["strMeasure11"];
    this.strMeasure12 = json["strMeasure12"];
    this.strMeasure13 = json["strMeasure13"];
    this.strMeasure14 = json["strMeasure14"];
    this.strMeasure15 = json["strMeasure15"];
    this.strMeasure16 = json["strMeasure16"];
    this.strMeasure17 = json["strMeasure17"];
    this.strMeasure18 = json["strMeasure18"];
    this.strMeasure19 = json["strMeasure19"];
    this.strMeasure20 = json["strMeasure20"];
    this.strSource = json["strSource"];
    this.strImageSource = json["strImageSource"];
    this.strCreativeCommonsConfirmed = json["strCreativeCommonsConfirmed"];
    this.dateModified = json["dateModified"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["idMeal"] = this.idMeal;
    data["strMeal"] = this.strMeal;
    data["strDrinkAlternate"] = this.strDrinkAlternate;
    data["strCategory"] = this.strCategory;
    data["strArea"] = this.strArea;
    data["strInstructions"] = this.strInstructions;
    data["strMealThumb"] = this.strMealThumb;
    data["strTags"] = this.strTags;
    data["strYoutube"] = this.strYoutube;
    data["strIngredient1"] = this.strIngredient1;
    data["strIngredient2"] = this.strIngredient2;
    data["strIngredient3"] = this.strIngredient3;
    data["strIngredient4"] = this.strIngredient4;
    data["strIngredient5"] = this.strIngredient5;
    data["strIngredient6"] = this.strIngredient6;
    data["strIngredient7"] = this.strIngredient7;
    data["strIngredient8"] = this.strIngredient8;
    data["strIngredient9"] = this.strIngredient9;
    data["strIngredient10"] = this.strIngredient10;
    data["strIngredient11"] = this.strIngredient11;
    data["strIngredient12"] = this.strIngredient12;
    data["strIngredient13"] = this.strIngredient13;
    data["strIngredient14"] = this.strIngredient14;
    data["strIngredient15"] = this.strIngredient15;
    data["strIngredient16"] = this.strIngredient16;
    data["strIngredient17"] = this.strIngredient17;
    data["strIngredient18"] = this.strIngredient18;
    data["strIngredient19"] = this.strIngredient19;
    data["strIngredient20"] = this.strIngredient20;
    data["strMeasure1"] = this.strMeasure1;
    data["strMeasure2"] = this.strMeasure2;
    data["strMeasure3"] = this.strMeasure3;
    data["strMeasure4"] = this.strMeasure4;
    data["strMeasure5"] = this.strMeasure5;
    data["strMeasure6"] = this.strMeasure6;
    data["strMeasure7"] = this.strMeasure7;
    data["strMeasure8"] = this.strMeasure8;
    data["strMeasure9"] = this.strMeasure9;
    data["strMeasure10"] = this.strMeasure10;
    data["strMeasure11"] = this.strMeasure11;
    data["strMeasure12"] = this.strMeasure12;
    data["strMeasure13"] = this.strMeasure13;
    data["strMeasure14"] = this.strMeasure14;
    data["strMeasure15"] = this.strMeasure15;
    data["strMeasure16"] = this.strMeasure16;
    data["strMeasure17"] = this.strMeasure17;
    data["strMeasure18"] = this.strMeasure18;
    data["strMeasure19"] = this.strMeasure19;
    data["strMeasure20"] = this.strMeasure20;
    data["strSource"] = this.strSource;
    data["strImageSource"] = this.strImageSource;
    data["strCreativeCommonsConfirmed"] = this.strCreativeCommonsConfirmed;
    data["dateModified"] = this.dateModified;
    return data;
  }
}