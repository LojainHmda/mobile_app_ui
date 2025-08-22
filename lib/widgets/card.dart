import 'dart:math';

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
   CardWidget({super.key, required this.image, required this.review, required this.job, required this.name});
  NetworkImage image;
   double review;
   String job;
   String name;
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 36,
                backgroundColor: Colors.grey[200],
                backgroundImage:image
              ),

              Positioned(
                top: 50,
                child: Container(
                  height: 85,
                  width: 85,
                
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.5),
                    child: Column(
                      children: [
                        Text(
                         name,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'Hind',
                            color: Color.fromRGBO(29, 31, 36, 0.7),
                          ),
                        ),
                        Text(
                          job,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontFamily: 'Hind',
                            color: Color.fromRGBO(29, 31, 36, 1),
                          ),
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child:Container(
                          width: 44,
                          height: 23,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(130, 123, 235, 0.08),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Color.fromRGBO(130, 123, 235, 1),
                                size: 16,
                              ),
                              SizedBox(width: 2),
                              Text(
                                "${review.toStringAsFixed(1)}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(29, 31, 36, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
