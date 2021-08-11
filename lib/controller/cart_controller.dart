import 'package:flutter/widgets.dart';
import 'package:test_task/data/model/cart.dart';
import 'package:test_task/data/model/product.dart';

class CartController extends ChangeNotifier  {
  List<CartData> listCart = [];
  List<Product> listProduct =[];
  var totalPrice=0.0;
  var totalPriceOnlyProduct=0.0;
  int cheackCart(Product  product){
    int index=-1;
    for(int i=0;i<listCart.length;i++){
      if(product.id==listCart[i].product!.id){
        index=i;
      }

    }
    return index;
  }
  addDataFack() {
    listProduct.clear();
    Product mProduct = Product(
        title: "product1",
        id: 1,
        price: 4.5,
        desc: ". Check the docs for your editor to learn more 1",
        image:
        "https://purewows3.imgix.net/images/articles/2020_12/LittleBeetTable_healthy-restaurants-nyc.jpg?auto=format,compress&cs=strip",
        listSides: getSides(),
        listDrinck: getDrinck());

    Product mProduct2 = Product(
        title: "product2",
        id: 2,
        price: 3.5,
        desc: ". Check the docs for your editor to learn more 2",
        image:
        "https://awol.junkee.com/wp-content/uploads/2019/11/30624445_2031384813783830_665928700650323968_n-copy.jpg",
        listSides: getSides(),
        listDrinck: getDrinck());
    listProduct.add(mProduct);
  listProduct.add(mProduct2);
  }

  List<Drinck> getDrinck() {
    List<Drinck> listDrinck = [];
    Drinck drinck1 = Drinck(title: 'pebsi', price: 0.00, id: 1);
    Drinck drinck2 = Drinck(title: 'cola', price: 0.50, id: 2);
    Drinck drinck3 = Drinck(title: 'marinda', price: 0.25, id: 3);
    Drinck drinck4 = Drinck(title: 'pebsi4', price: 0.75, id: 4);
    Drinck drinck5 = Drinck(title: 'pebsi5', price: 0.00, id: 5);
    Drinck drinck6 = Drinck(title: 'cola', price: 1.00, id: 6);
    listDrinck.add(drinck1);
    listDrinck.add(drinck2);
    listDrinck.add(drinck3);
    listDrinck.add(drinck4);
    listDrinck.add(drinck5);
    listDrinck.add(drinck6);

    return listDrinck;
  }

  List<Sides> getSides() {
    List<Sides> listSides = [];
    Sides sides1 = Sides(title: 'smal', price: 0.00, id: 1);
    Sides sides2 = Sides(title: 'large', price: 0.50, id: 2);
    Sides sides3 = Sides(title: 'f smal', price: 0.25, id: 3);
    Sides sides4 = Sides(title: 'f large', price: 0.75, id: 4);
    Sides sides5 = Sides(title: 'Clorwew', price: 0.00, id: 5);
    Sides sides6 = Sides(title: 'onione range', price: 1.00, id: 6);
    listSides.add(sides1);
    listSides.add(sides2);
    listSides.add(sides3);
    listSides.add(sides4);
    listSides.add(sides5);
    listSides.add(sides6);
    return listSides;
  }
  void initialise() {
    addDataFack();
    getTotal();
    notifyListeners();
  }
  getTotalProduct(Product  product){
    totalPriceOnlyProduct=0.0;
    double price=product.price;
     totalPriceOnlyProduct=product.quntity*price;
    totalPriceOnlyProduct=totalPriceOnlyProduct+getTolalSideSelect(product);
  }
  void initialiseTotalProduct(Product  product) {
    getTotalProduct(product);
    notifyListeners();
  }
  addToCart(Product  mproduct){
    int index=cheackCart(mproduct);
    if(index==-1){
      listCart.add(CartData(product: mproduct));
    }else{
      listCart[index]=CartData(product: mproduct);
    }
    getTotal();
  }


  getTotal(){
    totalPrice=0.0;
    for(int i=0;i<listCart.length;i++){
      double price=listCart[i].product!.price;
      totalPrice=totalPrice+(listCart[i].product!.quntity*price);
      totalPrice=totalPrice+getTolalSideSelect(listCart[i].product!);
    }
    notifyListeners();

  }
  double getTolalSideSelect(Product  product){
    double priceTotal=0.0;
    for(int i=0;i<product.listSides!.length;i++){
      if(product.listSides![i].select){
        double price=product.listSides![i].price;
        priceTotal=(priceTotal+(product.listSides![i].quntity*price));

      }

    }
    return priceTotal;
  }
}