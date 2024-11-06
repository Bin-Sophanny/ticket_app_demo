import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstab;
  final String secondtab;
  const AppTicketTabs({super.key, required this.firstab, required this.secondtab});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF4F6FD)),
      child: Row(children: [
        AppTabs(
          tabText: firstab,
        ),
        AppTabs(
          tabText: secondtab,
          tabBorder: true,
          tabColor: true,
        ),
      ]),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, this.tabText = "", this.tabBorder = false,this.tabColor=false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.44,
        decoration: BoxDecoration(
            color: tabColor==false?Colors.white:Colors.transparent,
            borderRadius: tabBorder == false
                ? BorderRadius.horizontal(left: Radius.circular(50))
                : BorderRadius.horizontal(right: Radius.circular(50))),
        child: Center(child: Text(tabText)),
      ),
    );
  }
}
