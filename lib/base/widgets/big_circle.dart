import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool right;
  final bool?  isColor;
  const BigCircle({super.key, required this.right,this.isColor});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: SizedBox(
        height: 20,
        width: 10,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isColor==null?Colors.white:Colors.grey.shade200,
            borderRadius: right == true
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
          ),
        ),
      ),
    );
  }
}
