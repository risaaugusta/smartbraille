import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Dashboard.dart';
import 'package:smartbraille/Page/Podcast/home_podcast.dart';

// ignore: camel_case_types
class detailPodcast extends StatelessWidget {
  const detailPodcast({Key? key}) : super(key: key);
  static const nameRoute = '/detailPodcast'; //optional

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
              Text("Pendidikan Kewarganegaraan",
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
                            height: 100,
                            width: 300,
                            margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
                            child: Center(
                              child: Text(
                                ("Bagian $index"),
                              ),
                            ),
                            color: Theme.of(context).colorScheme.primary,
                          )),
                )
              ],
            ),
          ),
        ));
  }
}
