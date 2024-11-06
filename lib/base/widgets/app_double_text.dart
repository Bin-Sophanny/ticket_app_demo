import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bText, required this.sText, required this.func });
  final String bText;
  final String sText;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bText, style: Appstyles.headlineStyle1),
        InkWell(
          onTap: func,
          child: Text(
            sText,
            style: Appstyles.textStyle.copyWith(color: Appstyles.primaryColor),
          ),
        )
      ],
    );
  }
}
