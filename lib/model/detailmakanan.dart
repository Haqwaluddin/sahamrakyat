class MakananDetail {
  List<Mealss>? meals;

  MakananDetail({this.meals});

  MakananDetail.fromJson(Map<String, dynamic> json) {
    this.meals = json["meals"]==null ? null : (json["meals"] as List).map((e)=>Mealss.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.meals != null)
      data["meals"] = this.meals?.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Mealss {
  String? strMeal;
  String? strMealThumb;
  String? idMeal;

  Mealss({this.strMeal, this.strMealThumb, this.idMeal});

  Mealss.fromJson(Map<String, dynamic> json) {
    this.strMeal = json["strMeal"];
    this.strMealThumb = json["strMealThumb"];
    this.idMeal = json["idMeal"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["strMeal"] = this.strMeal;
    data["strMealThumb"] = this.strMealThumb;
    data["idMeal"] = this.idMeal;
    return data;
  }
}