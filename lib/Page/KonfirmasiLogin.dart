import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'Login.dart';

// ignore: camel_case_types
class KonfirmasiLogin extends StatelessWidget {
  const KonfirmasiLogin({Key? key}) : super(key: key);
  static const nameRoute = '/KonfirmasiLogin'; //optional

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
          children: [
            Center(
              child: Text(
                "Konfirmasi",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding: EdgeInsets.fromLTRB(30, 60, 30, 60),
                  child: Column(
                    children: const [
                      Text(
                        "Apakah Benar Kamu ?",
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Alfi Filsafalasafi - 908171",
                        style: TextStyle(
                          color: Color(0xFF07617D),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 90,
              child: FloatingActionButton.extended(
                heroTag: "btn2",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(myLogin.nameRoute);
                },
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF07617D),
                label: Text(
                  'Salah',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: FloatingActionButton.extended(
                heroTag: "btn3",
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(myDashboard.nameRoute);
                },
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF07617D),
                label: Text(
                  'Benar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
