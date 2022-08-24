import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Dashboard.dart';
import 'package:smartbraille/Page/Podcast/bindo/bagian1.dart';
import 'package:smartbraille/Page/Podcast/home_podcast.dart';
import 'package:smartbraille/Page/Podcast/pemutaran.dart';
import 'package:smartbraille/Page/Podcast/pkn/bagian1.dart';
import 'package:smartbraille/Page/Podcast/pkn/bagian2.dart';

// ignore: camel_case_types
class detailPodcastBindo extends StatelessWidget {
  const detailPodcastBindo({Key? key}) : super(key: key);
  static const nameRoute = '/detailPodcast'; //optional
  static const int _current = 0;
  static const List<String> img = [
    'Bagian 1',
    'Bagian 2',
    'Bagian 3',
  ];
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
                    .pushReplacementNamed(homePodcast.nameRoute);
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
            children: [
              SizedBox(height: 30),
              Text("Bahasa Indonesia",
                  style: TextStyle(color: Colors.black)),
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/podcast.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        height: 100,
                        width: 300,
                        margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if(index == 0){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BindoBagian1()),
                                );
                              }else if(index == 1){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BindoBagian1()),
                                );
                              }else if(index == 2){
                                // Navigator.push(
                                // context,
                                // MaterialPageRoute(builder: (context) => Bagian2()),
                                // );
                                null; ///dst
                              }
                            },
                            child: Text(
                              ("Bagian ${index+1}"),style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20,)
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: img.map((url){
                    int index = 0 + 1;
                    return Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ?  Color(0xFF07617D) : Colors.grey
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ));
  }
}
