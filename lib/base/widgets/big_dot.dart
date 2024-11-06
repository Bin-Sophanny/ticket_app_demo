

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
  const BigDot({super.key, this.isColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 3,color:isColor==null? Colors.white:Appstyles.dotColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
