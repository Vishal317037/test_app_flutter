//Article link for using json file data
//https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  factory Item.fromJson(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"]
    );
  }

}

class CatalogModel{
  static List<Item> items;
}
