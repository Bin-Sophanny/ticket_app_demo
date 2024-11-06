import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/widget/hotel.dart';

import '../../base/res/styles.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("The Hotel List"),
          centerTitle: true,
          backgroundColor: Appstyles.bgColor),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotellist.map((singleHotel) => Container(
                margin: EdgeInsets.only(bottom: 15),
                  child: Hotel(hotel: singleHotel)),).toList(),
            ),
          )
        ],
      ),
    );
  }
}
