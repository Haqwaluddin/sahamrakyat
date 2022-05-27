class Makanan {
  List<Meals>? meals;

  Makanan({this.meals});

  Makanan.fromJson(Map<String, dynamic> json) {
    this.meals = json["meals"]==null ? null : (json["meals"] as List).map((e)=>Meals.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.meals != null)
      data["meals"] = this.meals?.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Meals {
  String? strCategory;

  Meals({this.strCategory});

  Meals.fromJson(Map<String, dynamic> json) {
    this.strCategory = json["strCategory"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["strCategory"] = this.strCategory;
    return data;
  }
}