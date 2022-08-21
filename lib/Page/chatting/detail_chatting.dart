import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Dashboard.dart';
import 'package:smartbraille/Page/Podcast/detail_podcast_pkn.dart';
import 'package:smartbraille/Page/chatting/home_catting.dart';

// ignore: camel_case_types
class detailChatting extends StatelessWidget {
  const detailChatting({Key? key}) : super(key: key);
  static const nameRoute = '/detailChatting'; //optional

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(homeChatting.nameRoute);
            },
            child: Card(
              color: Theme.of(context).colorScheme.secondary,
              child: Center(
                child: Text(
                  "Kembali",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        elevation: 0,
        title: Column(
          children: const [
            SizedBox(height: 30),
            Text("Alfi Filsafalasafi", style: TextStyle(color: Colors.black)),
          ],
        ),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                color: const Color(0xFF07617D),
                height: 4.0,
              ),
            ),
            preferredSize: Size.fromHeight(4.0)),
      ),
    );
  }
}
