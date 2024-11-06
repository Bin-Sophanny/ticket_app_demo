import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor = null});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return UnconstrainedBox(
        child: SizedBox(
      width: size.width * 0.8,
      height: 192,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              //margin: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: isColor == null
                            ? Appstyles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Appstyles.headlineStyle4,
                      ),
                      Expanded(child: Container()),
                       BigDot(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            child: AppLayoutBuilder(randomDivider: 6),
                            height: 25,
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.6,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor==null?Colors.white:Color(0xFFBACCF7),
                                  )))
                        ],
                      )),
                       BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      Text(ticket["to"]["code"],
                          style: isColor==null?Appstyles.headlineStyle4
                              .copyWith(color: Colors.white):Appstyles.headlineStyle4),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket["from"]["name"],
                        style: isColor==null?Appstyles.headlineStyle4
                            .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["flying_time"],
                        style: isColor==null?Appstyles.headlineStyle4
                            .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["name"],
                        style: isColor==null?Appstyles.headlineStyle4
                            .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: isColor == null
                    ? Appstyles.ticketBlue
                    : Appstyles.ticketColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
            ),
            //circle and dots
            Container(
              decoration: BoxDecoration(color: isColor==null?Appstyles.ticketOrange:Appstyles.ticketColor),
              height: 20,
              child:  Row(
                children: [
                  BigCircle(
                    right: false,
                    isColor:isColor
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 15,
                    width: 10,
                        isColor: isColor,
                  )),
                  BigCircle(
                    right: true,
                      isColor:isColor
                  ),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              //margin: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket["date"],
                            style: isColor==null?Appstyles.headlineStyle4
                                .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket["departure_time"],
                            style: isColor==null?Appstyles.headlineStyle4
                                .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket["number"],
                            style: isColor==null?Appstyles.headlineStyle4
                                .copyWith(color: Colors.white):Appstyles.headlineStyle4,
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
                            "Date",
                            style: isColor==null?Appstyles.headlineStyle4
                                .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Departure Time",
                            style: isColor==null?Appstyles.headlineStyle4
                                .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Number",
                            style: isColor==null?Appstyles.headlineStyle4
                                .copyWith(color: Colors.white):Appstyles.headlineStyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: isColor==null?Appstyles.ticketOrange:Appstyles.ticketColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
