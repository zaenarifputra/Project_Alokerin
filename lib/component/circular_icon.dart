import 'package:alokerin/utils/styles.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatefulWidget {
  const CircularIcon({
    super.key,
    required this.iconData,
    required this.text,
    });

  final IconData iconData;
  final String text;

  @override
  State<CircularIcon> createState() => _CircularIconState();
}

class _CircularIconState extends State<CircularIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
          shape: BoxShape.circle,
              color: Styles.secondaryContainerColor
          ),
          padding: const EdgeInsets.all(16),
          child: Icon(
            widget.iconData,
            size: 28,
            color: Styles.onPrimaryContainerColor,
          ),
        ),
        Text(
          widget.text,
          style: Styles.smallerTextStyle
        )
      ],
    );
  }
}
