import 'package:flutter/material.dart';

import '/utils/styles.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key, required this.text});
  final String text;

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding:
            const EdgeInsets.only(top: 40.0, left: 35.0),
            child: Image(
              image: AssetImage('assets/images/concert_images/ic_back.png'),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 36.0, left: 155.0),
            child: Text("Disimpan",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 100.0, left: 17.0, right: 17.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/card_bookmark.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
