import 'package:flutter/material.dart';

import 'KonfirmasiLogin.dart';

// ignore: camel_case_types
class myLogin extends StatelessWidget {
  const myLogin({Key? key}) : super(key: key);
  static const nameRoute = '/Login'; //optional

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07617D),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "SmartBraille",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Masukkan Nama Kamu dan ID Kamu",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true, // dont forget this line
              ),
              enabled: false,
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 105,
        child: FloatingActionButton.extended(
          heroTag: "btn1",
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(KonfirmasiLogin.nameRoute);
          },
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF07617D),
          icon: Icon(
            Icons.mic_rounded,
            size: 40,
          ),
          label: Text('MIC'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
