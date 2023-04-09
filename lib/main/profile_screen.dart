import 'package:flutter/material.dart';
import 'package:alokerin/welcome/login_screen.dart';

import '/utils/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.text});
  final String text;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            const EdgeInsets.only(top: 36.0, left: 160.0),
            child: Text("Profilku",
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
                const EdgeInsets.only(top: 90.0, left: 35.0,),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_pro.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 110.0, left: 155.0),
            child: Text("Zefania",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 135.0, left: 155.0),
            child: Text("UI/UX Designer",
              style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.normal,
                fontSize: 11.0,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 118.0, left: 260.0,),
                child: Image(
                  image: AssetImage('assets/images/concert_images/ic_edit.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 200.0, left: 40.0),
            child: Text("Halaman Utama",
              style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 240.0, left: 40.0),
            child: Text("Portofolio saya",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 280.0, left: 40.0),
            child: Text("Privasi",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 320.0, left: 40.0),
            child: Text("Syarat dan Ketentuan",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 360.0, left: 40.0),
            child: Text("Hubungi kami",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 400.0, left: 40.0),
            child: Text("Akunku",
              style: TextStyle(
                color: Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 435.0, left: 40.0),
            child: Text("Beralih ke akun lain",
              style: TextStyle(
                color: Color.fromARGB(255, 58, 153, 217),
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 450.0, left: 30.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context)=>LoginScreen())));
                },
                child: const Text("Keluar",
                  style: TextStyle(
                    color: Color.fromARGB(255, 229, 77, 66)
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
