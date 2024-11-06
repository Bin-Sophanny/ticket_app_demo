import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsets.all(8),
        width: size.width * 0.6,
        height: size.height*0.33,
        decoration: BoxDecoration(
          color: Appstyles.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}"),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel['place'],
                style: Appstyles.headlineStyle3.copyWith(color: Colors.brown),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel['destination'],
                style: Appstyles.headlineStyle1.copyWith(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "\$${hotel['price']}/night",
                style: Appstyles.headlineStyle3.copyWith(color: Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
