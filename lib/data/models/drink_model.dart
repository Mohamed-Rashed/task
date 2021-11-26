class DrinkModel {
  DrinkModel({
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isFavourite,
    required this.avatar,
  });
  late final String title;
  late final String subTitle;
  late final String price;
  late final bool isFavourite;
  late final String avatar;

  DrinkModel.fromJson(Map<String, dynamic> json){
    title = json['title'];
    subTitle = json['subTitle'];
    price = json['price'];
    isFavourite = json['isFavourite'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['subTitle'] = subTitle;
    _data['price'] = price;
    _data['isFavourite'] = isFavourite;
    _data['avatar'] = avatar;
    return _data;
  }
}