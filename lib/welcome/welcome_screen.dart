import 'package:alokerin/utils/styles.dart';
import 'package:alokerin/component/header_image_welcome.dart';
import 'package:alokerin/welcome/login_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../container/main_container.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Styles.backgroundColor,
          child:
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                        "assets/images/concert_images/welcome.png"
                    )
                )
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 40),
                        child: MaterialButton(
                            color: Styles.buttoncollor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Get Started",
                                    style: Styles.headlineStyle5,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Icon(
                                      FluentSystemIcons
                                          .ic_fluent_arrow_right_circle_filled,
                                      size: 20,
                                      color: Styles.onBackgroundColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onPressed: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()
                                )
                            )
                        ),
                      ),
                    ],
                  )
                ]
            ),
          ),
      ),
    );
  }
}
