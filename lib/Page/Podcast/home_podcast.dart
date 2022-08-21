import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Dashboard.dart';
import 'package:smartbraille/Page/Podcast/detail_podcast_pkn.dart';
import 'package:smartbraille/Page/Podcast/detail_podcast_bindo.dart';

// ignore: camel_case_types
class homePodcast extends StatelessWidget {
  const homePodcast({Key? key}) : super(key: key);
  static const nameRoute = '/homePodcast'; //optional

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
              Navigator.of(context).pushReplacementNamed(myDashboard.nameRoute);
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
            Text("Podcast", style: TextStyle(color: Colors.black)),
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
      body: GridView(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            color: Color(0xFF0C88AE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
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
                          .pushReplacementNamed(detailPodcast.nameRoute);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Pendidikan Kewarganegaraan',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            color: Color(0xFF0C88AE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage('assets/images/podcast.png'),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => detailPodcastBindo()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Bahasa Indonesia',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
