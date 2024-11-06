import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket_app/base/res/styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/widget/hotel.dart';

import '../../base/res/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning",
                        style: Appstyles.headlineStyle1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Book Tickets",
                        style: Appstyles.headlineStyle3,
                      ),
                    ],
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD),
                ),
                child: const Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Colors.yellow,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: AppDoubleText(
                  bText: "Upcomiong Flights",
                  sText: "View all",
                  func: () => Navigator.pushNamed(context, "/all_tickets"),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ticketList
                      .take(5)
                      .map((singleTicket) => TicketView(ticket: singleTicket))
                      .toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: AppDoubleText(
                  bText: "Hotel",
                  sText: "View all",
              func: () => Navigator.pushNamed(context,"/all_hotels"),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: hotellist.take(2)
                      .map((singleHotel) => Container(
                          margin: const EdgeInsets.only(right: 16),
                          child: Hotel(hotel: singleHotel)))
                      .toList(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
