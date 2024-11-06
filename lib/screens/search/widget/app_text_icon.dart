import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon,color: Appstyles.planeColor,),
          SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}
