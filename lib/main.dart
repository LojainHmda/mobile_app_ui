import 'package:flutter/material.dart';
import 'package:mobile_app_ui/widgets/card.dart';
import 'package:mobile_app_ui/widgets/custom_App_bar.dart';
import 'package:mobile_app_ui/widgets/titles.dart';

void main() {
  runApp(MaterialApp(home: Screen()));
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 10),
          Image.asset(
            'images/Group 780.png',
            width: double.infinity,
            height: 203,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15),
          TitleWidget(text: "Top Rated Freelances"),
          Container(
            height: 132,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(194, 215, 242, 1),
                  Color.fromRGBO(255, 255, 255, 0),
                ],
              ),
            ),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder:(context,index){ CardWidget();}
            ),
          ),
        ],
      ),
    );
  }
}
