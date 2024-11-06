import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/ticket/ticket_viewer_screen.dart';

import '../../base/res/styles.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("All of Tickets"),
          centerTitle: true,
          backgroundColor: Appstyles.bgColor),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(singleTicket);
                          print("I am tapping on ticket $index");
                          Navigator.pushNamed(context,"ticket_viewer_screen",
                              arguments: {"index": index});
                        },
                        child: TicketView(ticket: singleTicket)),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
