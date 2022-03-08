class Product {
  int? id;
  String? title;
  String? subtitle;
  String? trademark;
  String? screenSize;
  String? weight;
  String? price;
  String? image;
  String? color;

  Product(
      {this.id,
      this.title,
      this.subtitle,
      this.trademark,
      this.screenSize,
      this.weight,
      this.price,
      this.image,
      this.color});

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    subtitle = json['subtitle'];
    trademark = json['trademark'];
    screenSize = json['screen-size'];
    weight = json['weight'];
    price = json['price'];
    image = json['image'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['trademark'] = trademark;
    data['screen-size'] = screenSize;
    data['weight'] = weight;
    data['price'] = price;
    data['image'] = image;
    data['color'] = color;
    return data;
  }
}
