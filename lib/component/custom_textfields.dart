import 'package:flutter/material.dart';

import '../utils/styles.dart';

class PrimaryTextField extends StatefulWidget {

  final TextEditingController controller;
  final IconData? icon;
  final String label;
  final bool isPassword;

  const PrimaryTextField(
      {Key? key, required this.controller, required this.label, required this.isPassword, this.icon, })
      : super(key: key);

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        style: TextStyle(color: Styles.onPrimaryContainerColor),
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(color: Styles.primaryColor),
          filled: true,
          fillColor: Styles.secondaryContainerColor,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16)),
          prefixIcon: Icon(
            widget.icon,
            color: Styles.primaryColor,
          ),
        ));
  }
}

class SecondaryTextField extends StatefulWidget {

  final TextEditingController controller;
  final String label;
  final IconData? icon;
  final bool isPassword;

  const SecondaryTextField({Key? key, required this.controller, required this.isPassword, required this.label, this.icon}) : super(key: key);

  @override
  State<SecondaryTextField> createState() => _SecondaryTextFieldState();
}

class _SecondaryTextFieldState extends State<SecondaryTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: TextStyle(
          color: Styles.onPrimaryContainerColor
      ),
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        labelText: widget.label,
        filled: true,
        prefixIcon: Icon(
            widget.icon
        ),
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16)
        ),
      ),
    );
  }
}

