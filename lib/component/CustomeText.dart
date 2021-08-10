import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/helper/colore_app.dart';
class CustomeText extends StatelessWidget {
  final String? title;
  final Color? color;
  final double? fontSize;
  final Function ?press;
  final int? weight;
  final String? fontFamily;
  final int? aligment;
  final int? overflow;
  final int? maxLines;
  final double? fontHeight;



   CustomeText
      ({this.maxLines,this.title,this.overflow, this.weight, this.color, this.fontSize,  this.press,this.fontFamily,this.aligment, this.fontHeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap:press ,
      child: Container(
        //margin: EdgeInsets.symmetric(vertical:3),
        child: Text(title!.tr,style:TextStyle(color: color,fontSize:fontSize,height: fontHeight,fontFamily: (fontFamily==null)?Font_poppins_regular:fontFamily),textAlign: (aligment==null)?TextAlign.start:TextAlign.center,overflow:(overflow==null)?TextOverflow.visible: TextOverflow.ellipsis,maxLines: (maxLines==null)?null:maxLines,),
      ),
    );
  }
}
