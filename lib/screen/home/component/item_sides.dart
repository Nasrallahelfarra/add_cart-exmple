import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/component/CustomeText.dart';
import 'package:test_task/data/model/product.dart';
import 'package:test_task/helper/colore_app.dart';
import 'package:test_task/helper/font_app_size.dart';

class ItemSides extends StatelessWidget {
  Sides ?sides;
  VoidCallback ? pressPluse;
  VoidCallback  ?pressMin;
  ItemSides({this.sides,this.pressPluse,this.pressMin});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
      Expanded(
        child: CustomeText(
        title: "${sides!.title}",
            fontSize: fontSize12,
            fontFamily: Font_poppins_regular,
            color: Colors.black,
            overflow: 1),
      ),
          Row(
            children: [
              SizedBox(width: 3,),
              CustomeText(
                  title: "+${sides!.price}",
                  fontSize: fontSize12,
                  fontFamily: Font_poppins_regular,
                  color: Colors.black,
                  overflow: 1),
              SizedBox(width: 10,),
              changeQuntity(),

            ],
          )
        ],

      ),
    );
  }

  Widget changeQuntity() {
    return Row(
      children: [
        GestureDetector(
          onTap: pressMin,
          child: ClipOval(
            child: Image.asset(
              (sides!.quntity > 0)
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
        Container(
          color: Colors.black12,
          width: 20,
          child: CustomeText(
              title: "${sides!.quntity}",
              fontSize: fontSize12,
              fontFamily: Font_poppins_regular,
              color: Colors.black,
              aligment: 1,
              overflow: 1),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: pressPluse,
          child: ClipOval(
            child: SvgPicture.asset(
              "assets/icons/pluse_q.svg",
              width: 25,
              height: 25,
            ),
          ),
        ),
      ],
    );
  }
}
