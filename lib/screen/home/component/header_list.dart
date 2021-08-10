import 'package:flutter/material.dart';
import 'package:test_task/component/CustomeText.dart';
import 'package:test_task/helper/colore_app.dart';
import 'package:test_task/helper/font_app_size.dart';
class HeaderList extends StatelessWidget {
  String ?title;
  int? numberSelect;

  HeaderList({this.title, this.numberSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeText(
              title: "${title}",

              fontSize:fontSize15 ,
              fontFamily: Font_poppins_bold,
              color: Colors.black,
              overflow:1

          ),
          SizedBox(width: 5,),
          CustomeText(
              title: "Select (${numberSelect})",

              fontSize:fontSize12 ,
              fontFamily: Font_poppins_medium,
              color: Colors.black12,
              overflow:1

          ),
        ],
      ),
    );
  }
}
