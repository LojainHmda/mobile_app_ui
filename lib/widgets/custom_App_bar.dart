import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AppBar(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(30, 54, 114, 0.02),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_rounded),
                ),
              ),
              SizedBox(width: 18),
              Container(
                decoration: BoxDecoration(
                  color: Color(0x1E36721F),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_checkout_rounded),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Container(
                height: 51,
                width: 310,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFB2BACD)),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.search),
                    ),
                    Text("Search here"),
                  ],
                ),
              ),
              SizedBox(width: 18),
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFB2BACD)),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
