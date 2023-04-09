import 'package:flutter/material.dart';
import 'package:alokerin/welcome/pekerjaan.dart';
import 'package:alokerin/main/search_screen.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.text});
  final String text;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding:
            const EdgeInsets.only(top: 40.0, left: 05.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context)=>SearchScreen(text: ""))));
              },
              icon: Image.asset('assets/images/concert_images/ic_back.png'),
              ),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column (
                children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 55.0, left: 10.0),
              child: Column(
              children: <Widget>[
                Text('Detail Pekerjaan',
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
                   ),
                 ),
               ],
              ),
            ),
            Padding(
            padding:
            const EdgeInsets.only(top: 10.0, left: 20.0),
            child: Image(
            image: AssetImage('assets/images/concert_images/img_alfa.png'),
              ),
            ),
            Padding(
            padding:
            const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 30.0),
            child: Text("Crew Store",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
                ),
              ),
            ),
            Padding(
            padding:
            const EdgeInsets.only(top: 10.0, left: 20.0),
            child: Image(
            image: AssetImage('assets/images/concert_images/img_date.png'),
              ),
            ),
            Padding(
            padding:
            const EdgeInsets.only(top: 30.0, left: 17.0),
            child: Image(
            image: AssetImage('assets/images/concert_images/img_pkj.png'),
              ),
            ),
            InkResponse(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pekerjaan(text: "")),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Image.asset('assets/images/concert_images/btn_dftr.png'),
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