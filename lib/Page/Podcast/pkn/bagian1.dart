import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Podcast/home_podcast.dart';


class Bagian1 extends StatefulWidget {
  const Bagian1({Key? key}) : super(key: key);

  @override
  _Bagian1State createState() => _Bagian1State();
}

class _Bagian1State extends State<Bagian1> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState(){
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == AudioPlayerState.PLAYING;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      position = newPosition;
    });
  }

  @override
  void dispose(){
    audioPlayer.dispose();
    super.dispose();
  }

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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        ("Bagian 1"),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                        ("01 : 30 : 12"), ///durasi
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                        )
                    ),
                  ],
                ),
              ),
              Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: new Image.asset('assets/images/stream.png')
              ),
              // Slider(
              //   min: 0,
              //   max: duration.inSeconds.toDouble(),
              //   value:position.inSeconds.toDouble(),
              //   onChanged: (value) async{
              //     final position = Duration(seconds: value.toInt());
              //     await audioPlayer.seek(position);
              //
              //     await audioPlayer.resume();
              //   },
              // ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                color: Theme.of(context).colorScheme.primary,
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 70,
                        icon: Icon( isPlaying ? Icons.pause :
                        Icons.play_circle_fill,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          if (isPlaying){
                            await audioPlayer.pause();
                          }else{
                            String url = 'assets/audio/alfatihah.mp3';
                            await audioPlayer.play(url);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
