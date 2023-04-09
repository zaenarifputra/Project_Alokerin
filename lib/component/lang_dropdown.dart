import 'package:alokerin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class LangDropDown extends StatefulWidget {
  const LangDropDown({super.key, required this.text});

  final String text;

  @override
  State<LangDropDown> createState() => _LangDropDownState();
}

class _LangDropDownState extends State<LangDropDown> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
          style: Styles.headlineStyle4,
        ),
        Icon(PhosphorIcons.caret_down_light, color: Styles.primaryColor)
      ],
    );
  }
}
