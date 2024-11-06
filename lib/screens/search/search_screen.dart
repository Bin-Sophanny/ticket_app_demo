import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles.dart';
import 'package:ticket_app/screens/search/widget/app_text_icon.dart';
import 'package:ticket_app/screens/search/widget/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widget/find_tickets.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are \nyou looking for?",
            style: Appstyles.headlineStyle3.copyWith(fontSize: 35),
          ),
          const AppTicketTabs(firstab: "All Tickets",secondtab: "All Hotels",),
          const SizedBox(height: 20),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(height: 10),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(height: 20),
          const FindTickets(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppDoubleText(
              bText: "Upcomiong Flights",
              sText: "View all",
              func: () => Navigator.pushNamed(context, "/all_tickets"),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * 0.44,
                height: 640,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 2,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSit),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "20% discount on the early booking of this flight.Don't miss",
                      style: Appstyles.headlineStyle3,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          UnconstrainedBox(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              width: size.width * 0.4,
                              height: 310,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF3AB8B8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Discount\nfor survey",
                                    style: Appstyles.headlineStyle3.copyWith(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Take the survey about our services and get discount",
                                    style: Appstyles.headlineStyle1
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: -50,
                            top: -50,
                            child: UnconstrainedBox(
                              child: Container(
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 18,
                                      color: Appstyles.circleColor,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        width: size.width * 0.4,
                        height: 310,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEC6545),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Take Love",
                              style: Appstyles.headlineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '😘',style: TextStyle(fontSize: 50)
                                ),
                                TextSpan(
                                    text: '😍',style: TextStyle(fontSize: 50)
                                ),
                                TextSpan(
                                    text: '❤️',style: TextStyle(fontSize: 50)
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
