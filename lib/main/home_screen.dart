import 'package:alokerin/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.name});
  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/concert_images/bg_home.png')
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 26.0, left: 17.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_profile.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 20.0, bottom: 5.0, left: 80.0),
            child: Text("Zefania",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 50.0, bottom: 5.0, left: 80.0),
            child: Text("UI/UX Designer",
              style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 32.0, left: 350.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_notification.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 100.0, bottom: 5.0, left: 25.0),
            child: Text("Temukan Pekerjaan",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 150.0, right: 15.0, left: 15.0),
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
                const EdgeInsets.only(top: 172.0, left: 328.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_filter.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 230.0, bottom: 5.0, left: 25.0),
            child: Text("Pekerjaan Populer",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 270.0, left: 20.0, right: 15.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_pekerjaan_populer.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 475.0, bottom: 5.0, left: 25.0),
            child: Text("Pekerjaan Terbaru",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 520.0, left: 20.0, right: 20.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_pkj_home.png'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 530.0, left: 220.0, right: 10.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_pkj_tetap.png'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 630.0, left: 220.0, right: 10.0),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_pkj_waktu.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
