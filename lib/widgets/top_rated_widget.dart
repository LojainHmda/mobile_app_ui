import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_app_ui/widgets/card.dart';
class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromRGBO(231, 239, 252, 1),
            Color.fromRGBO(255, 255, 255, 0),
          ],
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
         return CardWidget(image:  NetworkImage(
            "https://randomuser.me/api/portraits/men/${Random().nextInt(100)}.jpg",
    
          ),
          job: "Beautician",
          review: 4.9,
          name:"Wade Warren",);
        },
      ),
      
    );
  }
}
