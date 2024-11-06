import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool? isColor;
  const AppLayoutBuilder({super.key, required this.randomDivider , this.width=5, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth()/randomDivider).floor(),
            (index) => SizedBox(
              width: width,
              height: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(color: isColor==null?Colors.white:Colors.grey.shade300),
              ),
            )
        ),
      );
    });
  }
}
