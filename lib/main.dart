import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Podcast/detail_podcast.dart';
import 'package:smartbraille/Page/Podcast/home_podcast.dart';
import 'package:smartbraille/Page/chatting/detail_chatting.dart';
import 'package:smartbraille/Page/chatting/home_catting.dart';
import 'Page/Dashboard.dart';
import 'Page/KonfirmasiLogin.dart';
import 'Page/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0xFF07617D),
              secondary: const Color(0xFFF9A828),
            ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            // fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: const myLogin(),
      routes: {
        KonfirmasiLogin.nameRoute: (context) => KonfirmasiLogin(),
        myLogin.nameRoute: (context) => myLogin(),
        homePodcast.nameRoute: (context) => homePodcast(),
        detailPodcast.nameRoute: (context) => detailPodcast(),
        myDashboard.nameRoute: (context) => myDashboard(),
        homeChatting.nameRoute: (context) => homeChatting(),
        detailChatting.nameRoute: (context) => detailChatting(),
        // '/galleryPage': (context) => galleryPage(),
        // '/photoPage': (context) => photoPage(),
      },
    );
  }
}
