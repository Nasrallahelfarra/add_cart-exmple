import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/component/CustomeText.dart';
import 'package:test_task/controller/cart_controller.dart';
import 'package:test_task/data/model/product.dart';
import 'package:test_task/helper/colore_app.dart';
import 'package:test_task/helper/font_app_size.dart';
import 'package:get/get.dart';
class HederDiloge extends StatelessWidget {
  Product ?product;
  final CartControllerx = Get.put(CartController());
  VoidCallback ? pressPluse;
  VoidCallback  ?pressMin;
  HederDiloge({this.product,this.pressPluse,this.pressMin});

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Stack(
       children: [
         GestureDetector(
           onTap: (){

           },
           child: Container(

             child: Column(
               children: [
                 ShowImage(),
                 Container(
                   margin: EdgeInsets.only(right: 4),
                   padding: EdgeInsets.only(bottom: 12, left: 12, right: 0, top: 0),
                   decoration: BoxDecoration(
                       color: Colors.white, borderRadius: BorderRadius.circular(9)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Expanded(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [

                             Column(
                               mainAxisSize: MainAxisSize.min,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 SizedBox(
                                   height: 6,
                                 ),
                                 CustomeText(
                                   title:"${product!.title}" ,

                                   fontSize:fontSize15 ,
                                   fontFamily: Font_poppins_medium,
                                 color: Colors.black,
                                 overflow:1

                                 ),
                                 SizedBox(
                                   height: 3,
                                 ),
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Transform(
                                         transform: Matrix4.translationValues(-4, 0, 0),
                                         child: Icon(
                                           Icons.location_on,
                                           color: Color(0xFFEC0D4D),
                                           size: 20,
                                         )),

                                   ],
                                 ),
                                 SizedBox(
                                   height: 3,
                                 ),

                             Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 SizedBox(

                                   child: CustomeText(
                                       title: "${product!.desc}",
                                       maxLines: 2,
                                       fontSize:fontSize12 ,
                                       fontFamily: Font_poppins_regular,
                                       color:  Color(0xFF949494),
                                       overflow:1

                                   ),
                                   width: 280,
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 ClipRRect(
                                   borderRadius: BorderRadius.all(Radius.circular(20)),
                                   child: Container(
                                     width: 120,
                                     padding: EdgeInsets.only(left: 5,right: 5,bottom: 2,top: 2),
                                     alignment: Alignment.center,
                                     color: Colors.blue,
                                     child: Row(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         CustomeText(
                                             title: "${product!.price}",

                                             fontSize:fontSize12 ,
                                             fontFamily: Font_poppins_regular,
                                             color:  Colors.white,
                                             overflow:1

                                         ),
                                         SizedBox(width:3,),
                                         CustomeText(
                                             title: "JOD",

                                             fontSize:fontSize12 ,
                                             fontFamily: Font_poppins_regular,
                                             color:  Colors.white,
                                             overflow:1

                                         ),
                                       ],
                                     ),

                                   ),
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                               ],
                             ),

                               ],
                             ),
                             SizedBox(
                               width: 20,
                             ),
                           ],
                         ),
                       ),
                       changeQuntity()
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
      /*  Positioned.directional(
           end: 20,
           top: 10,
           textDirection: Directionality.of(context),
           child:
         ),*/
       ],
     )
    );
  }
  Widget ShowImage(){
    return Container(
      width: double.infinity,
      height: 180,

      alignment: Alignment.center,

      child: ClipRRect(

        child: CachedNetworkImage(
          imageUrl: "${product!.image}",
          imageBuilder: (context, imageProvider) =>
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider, fit: BoxFit.cover),
                ),
              ),
          placeholder: (context, url) =>
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: kColorButtom,

                ),
                child: Image.asset(
                  'assets/icons/loading.gif',
                  width: 20,
                  height: 20,
                ),
              ),
          errorWidget: (context, url, error) =>
              Container(
                width: double.infinity,
                height: double.infinity,
                color: kColorButtom,
                child: SvgPicture.asset("assets/images/placholder_kit.svg" , height: 30,width: 30),

              ),
        ),
        /* child: imageNetwork(
                          url:  "${kitchen.kitchenImage??kitchen.kitchenLogo}",
                          height: 60,
                          width: 60,
                          withPlacholder: true,
                        ),*/
      ),
    );
  }
  Widget changeQuntity() {
    return Transform(
      alignment: FractionalOffset.center,
      // Rotate sliders by 90 degrees
      transform: new Matrix4.identity()
        ..rotateZ(180 * 3.1415927 / 180),
      child: Column(
        children: [
          GestureDetector(
            onTap:pressMin,
            child: ClipOval(
              child: Image.asset(
                (product!.quntity> 0)
                    ? "assets/icons/min_en.png"
                    : "assets/icons/min_dis.png",
                width: 25,
                height: 25,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Transform(
            alignment: FractionalOffset.center,
            // Rotate sliders by 90 degrees
            transform: new Matrix4.identity()
              ..rotateZ(180 * 3.1415927 / 180),
            child: Container(
              color: Colors.black12,
              width: 20,
              child: CustomeText(
                  title: "${product!.quntity}",
                  fontSize: fontSize12,
                  aligment: 1,
                  fontFamily: Font_poppins_regular,
                  color: Colors.black,
                  overflow: 1),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap:pressPluse,
            child: ClipOval(
              child: SvgPicture.asset(
                "assets/icons/pluse_q.svg",
                width: 25,
                height: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
