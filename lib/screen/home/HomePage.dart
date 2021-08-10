import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/component/CustomeText.dart';
import 'package:test_task/controller/cart_controller.dart';
import 'package:test_task/data/model/product.dart';
import 'package:test_task/helper/Messages.dart';
import 'package:test_task/helper/colore_app.dart';
import 'package:test_task/helper/font_app_size.dart';
import 'package:test_task/helper/shared_method.dart';
import 'package:test_task/utility/size_config.dart';

import 'component/header_diloge.dart';
import 'component/header_list.dart';
import 'component/item_product.dart';
import 'component/item_select_one.dart';
import 'component/item_sides.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CartControllerx = Get.put(CartController());
  int selectDrinks=-1;
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      addDataFack();

      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
            height: SizeConfig.screenHeight,
            child: Column(
              children: [Expanded(child: ListViewProduct()), FooterHome()],
            )),
      ),
    );
  }

  Widget ListViewProduct() {
    return SingleChildScrollView(
      child: Obx(() {
        return ListView.builder(
            itemCount: CartControllerx.listProduct.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 0),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      int locationProduct=CartControllerx.cheackCart(CartControllerx.listProduct[index]);
                      if(locationProduct==-1){
                        addDataFack();
                        selectDrinks=-1;
                        showdiloge(CartControllerx.listProduct[index]);

                      }else{
                        addDataFack();
                        print(CartControllerx.listCart.value[locationProduct].product!.quntity);
                        CartControllerx.listProduct.removeAt(index);
                        CartControllerx.listProduct.insert(index, CartControllerx.listCart.value[locationProduct].product!);
                        selectDrinks=-1;
                        getSelectIndexDrinks(CartControllerx.listProduct[index]);

                        showdiloge(CartControllerx.listProduct[index]);

                      }

                    },
                    child: ItemProduct(
                      product: CartControllerx.listProduct[index],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              );
            });
      }),
    );
  }
  /*showdiloge(Product product) {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
            alignment: Alignment.bottomCenter,
            child: ShowdilogeFiltter(product));
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
          Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }*/

  showdiloge(Product product) {
    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,

      context: context,
      builder: (BuildContext context) {
        return ShowdilogeProduct(product);
      },
    );
  }
  Widget ShowdilogeProduct(Product product) {
    getTotal(product);

    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 50),
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter mystate) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //height:(type == 8 && _myKitchenController.myKitchen.value.menus.length <5)?SizeConfig.screenHeight * 0.40:(type == 5 && ListServingType.length <7)?SizeConfig.screenHeight * 0.52: SizeConfig.screenHeight * 0.6,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [

                                SizedBox(
                                  height: 20,
                                ),
                                HederDiloge(product:product ,pressPluse: (){
                                  print("pluse");
                                  product.quntity=product.quntity+1;
                                  mystate(() {
                                    getTotal(product);

                                  });
                                },pressMin: (){
                                  if( product.quntity==1){

                                  }else{
                                    product.quntity=product.quntity-1;
                                    mystate(() {
                                      getTotal(product);

                                    });
                                  }
                                },),
                                HeaderList(title: "Sides",numberSelect: 2,),
                                SizedBox(
                                  height: 10,
                                ),
                                ListSides(mystate,product),
                                SizedBox(
                                  height: 10,
                                ),
                                HeaderList(title: "Drinks",numberSelect: 1,),
                                SizedBox(
                                  height: 10,
                                ),
                                ListDrinks(mystate,product),
                                SizedBox(
                                  height: 10,
                                ),


                                /*Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ReoundButtom(
                                    title: kSave,
                                    press: (){

                                      Get.back();
                                    },
                                  ),
                                )*/
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: SizedBox(
                            height: getProportionateScreenWidth(30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                totalDiloge(),
                                GestureDetector(
                                    onTap: (){
                                      if(selectDrinks!=-1){
                                        product.listDrinck![selectDrinks].select=true;

                                      }
                                      CartControllerx.addToCart(product);

                                      Get.back();
                                    },
                                    child: buttomDiloge(title: "Add to Basket",color: kColorButtom))
                              ],
                            )),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }

  Widget buttomDiloge({String? title, Color? color}){
    return  ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        width: 120,
        padding: EdgeInsets.only(left: 5,right: 5,bottom: 2,top: 2),
        alignment: Alignment.center,
        color: color,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomeText(
                title: "${title}",

                fontSize:fontSize12 ,
                fontFamily: Font_poppins_regular,
                color:  Colors.white,
                overflow:1

            ),

          ],
        ),

      ),
    );
  }
  Widget totalDiloge(){
    return  Obx(
      () {
        return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            width: 120,

            alignment: Alignment.center,
            color: Colors.blue,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomeText(
                    title: "${CartControllerx.totalPriceOnlyProduct.value}",
                    fontSize: fontSize12,
                    fontFamily: Font_poppins_regular,
                    color: Colors.white,
                    overflow: 1),
                SizedBox(
                  width: 3,
                ),
                CustomeText(
                    title: "JOD",
                    fontSize: fontSize12,
                    fontFamily: Font_poppins_regular,
                    color: Colors.white,
                    overflow: 1),
              ],
            ),
          ),
        );
      }
    );
  }
  Widget FooterHome() {
    return Obx(
      () {
        return Row(
          children: [
            SizedBox(
              width: 100,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                child: Container(
                  width: SizeConfig.screenWidth,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 15),
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomeText(
                              title: "${CartControllerx.totalPrice.value}",
                              fontSize: fontSize12,
                              fontFamily: Font_poppins_regular,
                              color: Colors.white,
                              overflow: 1),
                          SizedBox(
                            width: 3,
                          ),
                          CustomeText(
                              title: "JOD",
                              fontSize: fontSize12,
                              fontFamily: Font_poppins_regular,
                              color: Colors.white,
                              overflow: 1),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }
  Widget ListSides(StateSetter mystate,Product product) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(0),
      itemBuilder: (context, postion) {
        return Column(
          children: [
            ItemSides(sides: product.listSides![postion],
            pressMin: (){
              if( product.listSides![postion].quntity==0){
                product.listSides![postion].select=false;

              }else{
                product.listSides![postion].quntity=product.listSides![postion].quntity-1;
                mystate(() {
                  getTotal(product);

                });
                if(product.listSides![postion].quntity==0){
                  product.listSides![postion].select=false;
                  mystate(() {
                    getTotal(product);

                  });
                }
              }

            },
            pressPluse: (){
               if(product.listSides![postion].select){

                 product.listSides![postion].quntity=product.listSides![postion].quntity+1;
                 product.listSides![postion].select=true;
                 mystate(() {
                   getTotal(product);

                 });
               }else{
                 if(cheackNumberSelect(product)<2){
                   product.listSides![postion].quntity=product.listSides![postion].quntity+1;
                   product.listSides![postion].select=true;
                   mystate(() {
                     getTotal(product);

                   });
                 }else{
                   snackError(kErorr.tr," Select only 2");
                 }

               }

            },),SizedBox(height: 3,),
          ],
        );
      },
      itemCount: product.listSides!.length,
    );
  }
  Widget ListDrinks(StateSetter mystate,Product product) {
    return ListView.builder(
      shrinkWrap: true,

      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(0),
      itemBuilder: (context, postion) {
        return Column(
          children: [
            GestureDetector
              (
              onTap: (){
                mystate(() {
                  selectDrinks=postion;

                });
              },
                child: ItemSelectOne(text:product.listDrinck![postion].title ,select:selectDrinks==postion?true:false ,)),SizedBox(height: 3,),
            SizedBox(height: 5,)
          ],
        );
      },
      itemCount: product.listDrinck!.length,
    );
  }
  getSelectIndexDrinks(Product product){
    for(int i=0;i<product.listDrinck!.length;i++){
      if(product.listDrinck![i].select){
        selectDrinks=i;

      }

    }
  }

  pressMinHeader(StateSetter mystate,Product product){
    if( product.quntity==1){

    }else{
      product.quntity=product.quntity-1;
        mystate(() {
          getTotal(product);

        });
      }
    }


  pressPluseHeader(StateSetter mystate,Product product){
    print("pluse");
    product.quntity=product.quntity+1;
    mystate(() {
      getTotal(product);

    });
  }
  int cheackNumberSelect(Product product){
    int index=0;
    for(int i=0;i<product.listSides!.length;i++){
      if(product.listSides![i].select){
        index=index+1;

      }

    }
    return index;
  }

  getTotal(Product  product){
    CartControllerx.totalPriceOnlyProduct.value=0.0;
    double price=product.price;
    CartControllerx.totalPriceOnlyProduct.value=product.quntity*price;
    CartControllerx.totalPriceOnlyProduct.value=CartControllerx.totalPriceOnlyProduct.value+getTolalSideSelect(product);
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
  addDataFack() {
    CartControllerx.listProduct.clear();
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
    CartControllerx.listProduct.add(mProduct);
    CartControllerx.listProduct.add(mProduct2);
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
}
