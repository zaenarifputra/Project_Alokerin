import 'dart:io';

import 'package:flutter/material.dart';
import 'package:alokerin/welcome/detail_screen.dart';


import '/utils/styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.text});
  final String text;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
            const EdgeInsets.only(top: 50.0, left: 335.0),
            child: Text("Edit",
              style: TextStyle(
                color: Color.fromARGB(255, 63, 136, 246),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 90.0, left: 17.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_location.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 88.0, bottom: 5.0, left: 50.0),
            child: Text("Purwokerto, Indonesia",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 130.0, right: 15.0, left: 15.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffd9d9d9),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Pencarian",
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 155.0, left: 328.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_filter.png'),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column (
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(top: 220.0, left: 17.0, right: 17.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context)=>DetailScreen(text: ""))));
                    },
                    icon: Image.asset('assets/images/concert_images/ic_search_1.png'),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, left: 17.0, right: 17.0),
                  child: Image(
                    image: AssetImage('assets/images/concert_images/ic_search_2.png'),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, left: 17.0, right: 17.0),
                  child: Image(
                    image: AssetImage('assets/images/concert_images/ic_search_3.png'),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, left: 17.0, right: 17.0),
                  child: Image(
                    image: AssetImage('assets/images/concert_images/ic_search_4.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
