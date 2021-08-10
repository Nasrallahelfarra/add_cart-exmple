import 'package:test_task/data/model/product.dart';

class CartData{
  Product ?product;
  int index;

  CartData({this.product, this.index=0});
}