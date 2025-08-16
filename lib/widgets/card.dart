
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: 83,
      decoration: BoxDecoration(
    color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
