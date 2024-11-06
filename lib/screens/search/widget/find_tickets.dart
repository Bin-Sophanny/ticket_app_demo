import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      decoration: BoxDecoration(
        color: Appstyles.findticketColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text("find tickets",style: Appstyles.headlineStyle3.copyWith(color: Colors.white),)),
    );
  }
}
