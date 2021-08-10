import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/component/CustomeText.dart';
import 'package:test_task/helper/colore_app.dart';
import 'package:test_task/utility/size_config.dart';

class ItemSelectOne extends StatelessWidget {
   bool? select , showImage;
  Function ?press;
  String ?text;
  final String ? imgUrl;


   ItemSelectOne({this.select, this.press, this.text, this.showImage = false, this.imgUrl});


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Colors.transparent
              )
          )
      ),
      child: Row(
        children: [
  /*          showImage ? SizedBox(
            child: Row(
              children: [
                imageNetwork(height: 36,width: 36 ,url:imgUrl ),
              ],
            ),
          ):SizedBox(),*/
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // SizedBox(width: 8,),

                CustomeText(
                  title: "$text",fontSize: 13,
                  fontFamily: Font_poppins_regular,
                ),
                SvgPicture.asset(
                    (select!)? "assets/icons/check_select.svg": "assets/icons/check_not_select.svg",
                    height: getProportionateScreenWidth(15)),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
