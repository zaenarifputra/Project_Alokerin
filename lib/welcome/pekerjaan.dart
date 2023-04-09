import 'dart:io';
import 'package:flutter/material.dart';
import 'package:alokerin/welcome/detail_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:alokerin/main/search_screen.dart';
import 'package:cool_alert/cool_alert.dart';

class Pekerjaan extends StatefulWidget {
  const Pekerjaan({super.key, required this.text});
  final String text;

  @override
  State<Pekerjaan> createState() => _PekerjaanState();
}

class _PekerjaanState extends State<Pekerjaan> {

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
            padding: EdgeInsets.only(top: 38.0, left: 130.0),
            child: Column(
              children: <Widget>[
                Text('Daftar Sekarang',
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
            const EdgeInsets.only(top: 60.0, left: 80.0),
            child: Image(
              image: AssetImage('assets/images/concert_images/img_alfa.png'),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 170.0, left: 110.0),
            child: Text("Crew Store",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 220.0, left: 20.0),
            child: Image(
              image: AssetImage('assets/images/concert_images/img_date.png'),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(top: 280.0, left: 50.0),
            child: Text("Kirimkan Portofoliomu Sekarang ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          InkResponse(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.only(top: 300.0, left: 12.0),
              child: Image.asset('assets/images/concert_images/btn_img_upd.png'),
            ),
          ),
          InkResponse(
            onTap: () {
              CoolAlert.show(
                context: context,
                type: CoolAlertType.success,
                text: "Berhasil Mengirimkan File!",
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 640.0),
              child: Image.asset('assets/images/concert_images/btn_krm.png'),
            ),
          ),
        ],
      ),
    );
  }
}