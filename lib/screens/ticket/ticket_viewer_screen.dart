import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widget/app_ticket_tabs.dart';

class TicketViewerScreen extends StatelessWidget {
  const TicketViewerScreen({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      appBar: AppBar(
        title: Text("Tickets"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Text("Tickets", style: Appstyles.headlineStyle3.copyWith(fontSize: 40)),
          SizedBox(height: 20),
          AppTicketTabs(firstab: "Upcoming", secondtab: "Previous"),
          SizedBox(height:20),
          // white and black
          Container(
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Appstyles.ticketColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter DB",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "5222 37281",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Passenger",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Passport",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Appstyles.ticketColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "364732 12739288",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "B2SG281",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Number of E-ticket",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking code",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Appstyles.ticketColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visa,
                                  scale: 15,
                                ),
                                Text(
                                  "**** 2932",
                                  style: isColor == true
                                      ? Appstyles.headlineStyle4
                                          .copyWith(color: Colors.white)
                                      : Appstyles.headlineStyle4,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$149.99",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Method",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: isColor == true
                              ? Appstyles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Appstyles.headlineStyle4
                                  .copyWith(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Appstyles.ticketColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BarcodeWidget(
                  height: 80,
                  data: "www.dbestech.com",
                  barcode: Barcode.code128(),
                  drawText: false,
                  color: Appstyles.textColor,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Container(
            child: TicketView(
              ticket: ticketList[0],
            ),
          ),
        ],
      ),
    );
  }
}
