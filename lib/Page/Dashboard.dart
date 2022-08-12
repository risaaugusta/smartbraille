import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Podcast/home_podcast.dart';
import 'package:smartbraille/Page/chatting/home_catting.dart';

// ignore: camel_case_types
class myDashboard extends StatelessWidget {
  const myDashboard({Key? key}) : super(key: key);
  static const nameRoute = '/Dashboard'; //optional

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("SmartBraille", style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Center(
                child: Text("Keluar", style: TextStyle(color: Colors.black))),
          ),
        ],
      ),
      body: GridView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          childAspectRatio: 1.46,
        ),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            color: Color(0xFF0C88AE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage('assets/images/podcast.png'),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(homePodcast.nameRoute);
                    },
                  ),
                ),
                Text(
                  'Podcast',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            color: Color(0xFF0C88AE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage('assets/images/chatting.png'),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(homeChatting.nameRoute);
                    },
                  ),
                ),
                Text(
                  'Chatting',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 110,
        child: FloatingActionButton.extended(
          heroTag: "btn4",
          onPressed: () {},
          backgroundColor: Color(0xFF07617D),
          icon: Icon(
            Icons.cell_tower_sharp,
            size: 40,
          ),
          label: Text('LIVE'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
