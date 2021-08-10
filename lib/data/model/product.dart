class Product {
  int ?id;
  String ?title;
  String ?image;
  double price;
  List<Sides>?listSides;
  List<Drinck>?listDrinck;
  String ?desc;
  bool isFavarit;
  int quntity;

  Product({this.price=0.0,this.quntity=1,this.id, this.title, this.listSides, this.listDrinck, this.desc,this.image,this.isFavarit=false});
}
class Sides{
  String ?title;
  int ?id;
  double price;
  int quntity;
  bool select;

  Sides({this.title, this.id, this.price=0.0, this.quntity=0,this.select=false});
}

class Drinck{
  String ?title;
  int ?id;
  double ?price;
  int quntity;
  bool select;
  Drinck({this.title, this.id, this.price, this.quntity=0,this.select=false});
}