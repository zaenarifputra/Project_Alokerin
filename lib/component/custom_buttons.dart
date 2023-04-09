import 'package:flutter/material.dart';
import 'package:alokerin/utils/styles.dart';
import 'package:alokerin/utils/icon_position.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final double size;
  final String iconPosition;

  const PrimaryButton(
      {Key? key,
        required this.onPressed,
        required this.text,
        this.icon,
        required this.size,
        required this.iconPosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      if (iconPosition == IconPosition.start) {
        return MaterialButton(
            onPressed: onPressed,
            color: Styles.onPrimaryContainerColor,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              margin: EdgeInsets.all(size),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Styles.primaryContainerColor,
                    ),
                  ),
                  Text(
                    text,
                    style: Styles.onPrimaryButton,
                  ),
                ],
              ),
            ));
      } else if (iconPosition == IconPosition.end) {
        return MaterialButton(
            onPressed: onPressed,
            color: Styles.onPrimaryContainerColor,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              margin: EdgeInsets.all(size),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Styles.onPrimaryButton,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Styles.primaryContainerColor,
                    ),
                  )
                ],
              ),
            ));
      } else {
        return MaterialButton(
            onPressed: onPressed,
            color: Styles.onPrimaryContainerColor,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              margin: EdgeInsets.all(size),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Styles.onPrimaryButton,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Styles.primaryContainerColor,
                    ),
                  )
                ],
              ),
            ));
      }
    } else {
      return MaterialButton(
          onPressed: onPressed,
          color: Styles.onPrimaryContainerColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            margin: EdgeInsets.all(size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: Styles.onPrimaryButton,
                ),
              ],
            ),
          ));
    }
  }
}

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final double size;

  const SecondaryButton(
      {Key? key,
        required this.onPressed,
        required this.text,
        this.icon,
        required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return MaterialButton(
          color: Styles.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onPressed: onPressed,
          child: Container(
            padding: EdgeInsets.all(size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: Styles.onSecondaryButton,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    icon,
                    size: 20,
                    color: Styles.onPrimaryColor,
                  ),
                )
              ],
            ),
          ));
    } else {
      return MaterialButton(
          color: Styles.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onPressed: onPressed,
          child: Container(
            padding: EdgeInsets.all(size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: Styles.onSecondaryButton,
                ),
              ],
            ),
          ));
    }
  }
}

class TertiaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final double size;

  const TertiaryButton(
      {Key? key,
        required this.onPressed,
        required this.text,
        this.icon,
        required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return MaterialButton(
          color: Styles.primaryContainerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onPressed: onPressed,
          child: Container(
            padding: EdgeInsets.all(size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: Styles.onTertiaryButton,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    icon,
                    size: 20,
                    color: Styles.onPrimaryContainerColor,
                  ),
                )
              ],
            ),
          ));
    } else {
      return MaterialButton(
        color: Styles.primaryContainerColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.all(size),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: Styles.onTertiaryButton,
              ),
            ],
          ),
        ),
      );
    }
  }
}

class OutlinedPrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;

  final String text;

  final double size;

  final IconData? icon;

  final String iconPosition;

  const OutlinedPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.size,
    required this.iconPosition,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      if (iconPosition == IconPosition.start) {
        return OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                backgroundColor: Styles.backgroundColor,
                side:
                BorderSide(color: Styles.primaryColor, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Container(
              margin: EdgeInsets.all(size),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Styles.primaryColor,
                    ),
                  ),
                  Text(
                    text,
                    style: Styles.onOutlinedPrimaryButton,
                  ),
                ],
              ),
            ));
      } else if (iconPosition == IconPosition.end) {
        return OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                backgroundColor: Styles.backgroundColor,
                side:
                BorderSide(color: Styles.primaryColor, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Container(
              margin: EdgeInsets.all(size),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Styles.onOutlinedPrimaryButton,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Styles.primaryColor,
                    ),
                  ),
                ],
              ),
            ));
      } else {
        return OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                backgroundColor: Styles.backgroundColor,
                side:
                BorderSide(color: Styles.primaryColor, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Container(
              margin: EdgeInsets.all(size),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Styles.onOutlinedPrimaryButton,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      icon,
                      size: 20,
                      color: Styles.primaryColor,
                    ),
                  ),
                ],
              ),
            ));
      }
    } else {
      return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              backgroundColor: Styles.backgroundColor,
              side: BorderSide(color: Styles.primaryColor, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: Container(
            margin: EdgeInsets.all(size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: Styles.onOutlinedPrimaryButton,
                ),
              ],
            ),
          ));
    }
  }
}

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  final IconData icon;

  const CustomIconButton({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      color: Styles.backgroundColor,
      icon: Icon(
        icon,
        color: Styles.primaryColor,
      ),
    );
  }
}

