import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
   TitleWidget({super.key,required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Container(
            height: 38,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(194, 215, 242, 1),
                  Color.fromRGBO(255, 255, 255, 0),
                ],
              ),
              
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Hind',fontSize: 20),),
            ),
          ),     TextButton(
          onPressed: () {},
          child: Text(
            "view All",
            style: TextStyle(decoration: TextDecoration.underline,fontSize: 14),
          ),
        ),
      ],
    );
  }
}
