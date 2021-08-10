import 'package:get/state_manager.dart';
import 'package:test_task/data/model/cart.dart';
import 'package:test_task/data/model/product.dart';

class CartController extends GetxController {
  var listCart = RxList<CartData>().obs;
  RxList<Product> listProduct = RxList<Product>();
  var totalPrice=0.0.obs;
  var totalPriceOnlyProduct=0.0.obs;
  int cheackCart(Product  product){
    int index=-1;
    for(int i=0;i<listCart.value.length;i++){
      if(product.id==listCart.value[i].product!.id){
        index=i;
      }

    }
    return index;
  }

  addToCart(Product  mproduct){
    int index=cheackCart(mproduct);
    if(index==-1){
      listCart.value.add(CartData(product: mproduct));
    }else{
      listCart.value[index]=CartData(product: mproduct);
    }
    getTotal();
  }


  getTotal(){
    totalPrice.value=0.0;
    for(int i=0;i<listCart.value.length;i++){
      double price=listCart.value[i].product!.price;
      totalPrice.value=totalPrice.value+(listCart.value[i].product!.quntity*price);
      totalPrice.value=totalPrice.value+getTolalSideSelect(listCart.value[i].product!);
    }
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