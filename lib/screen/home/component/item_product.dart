import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/component/CustomeText.dart';
import 'package:test_task/data/model/product.dart';
import 'package:test_task/helper/colore_app.dart';
import 'package:test_task/helper/font_app_size.dart';
import 'package:test_task/utility/size_config.dart';
class ItemProduct extends StatelessWidget {
  Product ?product;

  ItemProduct({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(

     child: Stack(
       children: [
         Card(
           elevation: 1,
           child: Container(
             margin: EdgeInsets.only(right: 4),
             padding: EdgeInsets.only(bottom: 12, left: 12, right: 0, top: 0),
             decoration: BoxDecoration(
                 color: Colors.white, borderRadius: BorderRadius.circular(9)),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Align(
                   alignment: Alignment.center,
                   child: Container(
                     width: 100,
                     height: 100,
                     decoration: BoxDecoration(
                       border: Border.all(width: 4,color: kBorderColor),
                       borderRadius: BorderRadius.only(topRight: Radius.zero,topLeft: Radius.circular(15),bottomLeft:Radius.circular(15),bottomRight:Radius.circular(15) ),
                     ),
                     alignment: Alignment.center,

                     child: ClipRRect(

                       borderRadius: BorderRadius.only(topRight: Radius.zero,topLeft: Radius.circular(15),bottomLeft:Radius.circular(15),bottomRight:Radius.circular(15) ),
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
                   ),
                 ),

                 SizedBox(
                   width: 11,
                 ),
                 Expanded(
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       SizedBox(
                         height: 6,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           CustomeText(
                               title: "${product!.title}",

                             fontSize:fontSize15 ,
                         fontFamily: Font_poppins_medium,
                           color: Colors.black,
                           overflow:1

                       ),
                           addToCart()


                         ],
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
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Expanded(
                             child: CustomeText(
                                 title: "${product!.desc}",

                                 fontSize:fontSize12 ,
                                 fontFamily: Font_poppins_regular,
                                 color:  Color(0xFF949494),
                                 overflow:1,
                               maxLines: 2,

                             ),
                           ),
                           GestureDetector(
                               onTap: (){},
                               child: Icon(
                                 (product!.isFavarit)?Icons.favorite:Icons.favorite_border,
                                 color: kColorButtom,
                               )),
                         ],
                       ),
                       SizedBox(height:5,),

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
                     ],
                   ),

                     ],
                   ),
                 ),
                 SizedBox(
                   width: 20,
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

  Widget addToCart(){
    return  ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Container(
        width: 80,
        padding: EdgeInsets.only(left: 5,right: 5,bottom: 2,top: 2),
        alignment: Alignment.center,
        color: kColorButtom,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomeText(
                title: "Add",

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
}
