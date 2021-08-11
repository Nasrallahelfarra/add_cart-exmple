import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
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
  final CartControllerx =CartController();
  int selectDrinks=-1;
  @override
  void initState() {
   
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
            child: ViewModelBuilder<CartController>.reactive(
                viewModelBuilder: () => CartController(),
                onModelReady: (viewModel) => viewModel.initialise(),

                builder: (context, viewModel, child){
                return Column(
                  children: [Expanded(child: ListViewProduct(viewModel)), FooterHome(viewModel)],
                );
              }
            )),
      ),
    );
  }

  Widget ListViewProduct(CartController viewModel) {
    return SingleChildScrollView(
      child: ListView.builder(
                itemCount: viewModel.listProduct.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 0),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          int locationProduct=viewModel.cheackCart(viewModel.listProduct[index]);
                          print("locationProduct $locationProduct");

                          if(locationProduct==-1){
                            viewModel.addDataFack();
                            selectDrinks=-1;
                            showdiloge(viewModel.listProduct[index],viewModel);

                          }else{
                            viewModel.addDataFack();
                            viewModel.listProduct.removeAt(index);
                            viewModel.listProduct.insert(index, viewModel.listCart[locationProduct].product!);
                            selectDrinks=-1;
                            getSelectIndexDrinks(viewModel.listProduct[index]);

                            showdiloge(viewModel.listProduct[index],viewModel);

                          }

                        },
                        child: ItemProduct(
                          product: viewModel.listProduct[index],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  );


        }
      ),
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

  showdiloge(Product product,CartController cartControllerx) {
    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,

      context: context,
      builder: (BuildContext context) {
        return ShowdilogeProduct(product,cartControllerx);
      },
    );
  }
  Widget ShowdilogeProduct(Product product,CartController cartControllerx) {
    cartControllerx.getTotalProduct(product);
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 50),
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter mystate) {
                return ViewModelBuilder<CartController>.reactive(
                    viewModelBuilder: () => CartController(),
                    onModelReady: (viewModel) => viewModel.initialiseTotalProduct(product),

                    builder: (context, viewModel, child) {
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
                                        cartControllerx.getTotalProduct(product);

                                      });
                                    },pressMin: (){
                                      if( product.quntity==1){

                                      }else{
                                        product.quntity=product.quntity-1;
                                        mystate(() {
                                          cartControllerx.getTotalProduct(product);

                                        });
                                      }
                                    },),
                                    HeaderList(title: "Sides",numberSelect: 2,),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListSides(mystate,product,cartControllerx),
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
                                    totalDiloge( cartControllerx),
                                    GestureDetector(
                                        onTap: (){
                                          if(selectDrinks!=-1){
                                            product.listDrinck![selectDrinks].select=true;

                                          }
                                          cartControllerx.addToCart(product);

                                          Get.back();
                                        },
                                        child: buttomDiloge(title: "Add to Basket",color: kColorButtom))
                                  ],
                                )),
                          )
                        ],
                      ),
                    );
                  }
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
  Widget totalDiloge(CartController cartControllerx){

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
                    title: "${ cartControllerx.totalPriceOnlyProduct}",
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
  Widget FooterHome(CartController cartControllerx) {

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
                              title: "${cartControllerx.totalPrice}",
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
  Widget ListSides(StateSetter mystate,Product product,CartController CartControllerx) {
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
                  CartControllerx.getTotalProduct(product);

                });
                if(product.listSides![postion].quntity==0){
                  product.listSides![postion].select=false;
                  mystate(() {
                    CartControllerx.getTotalProduct(product);

                  });
                }
              }

            },
            pressPluse: (){
               if(product.listSides![postion].select){

                 product.listSides![postion].quntity=product.listSides![postion].quntity+1;
                 product.listSides![postion].select=true;
                 mystate(() {
                   CartControllerx.getTotalProduct(product);

                 });
               }else{
                 if(cheackNumberSelect(product)<2){
                   product.listSides![postion].quntity=product.listSides![postion].quntity+1;
                   product.listSides![postion].select=true;
                   mystate(() {
                     CartControllerx.getTotalProduct(product);

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

  int cheackNumberSelect(Product product){
    int index=0;
    for(int i=0;i<product.listSides!.length;i++){
      if(product.listSides![i].select){
        index=index+1;

      }

    }
    return index;
  }

 


}
