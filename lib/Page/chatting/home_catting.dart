import 'package:flutter/material.dart';
import 'package:smartbraille/Page/Dashboard.dart';
import 'package:smartbraille/Page/Podcast/detail_podcast.dart';
import 'package:smartbraille/Page/chatting/detail_chatting.dart';

// ignore: camel_case_types
class homeChatting extends StatelessWidget {
  const homeChatting({Key? key}) : super(key: key);
  static const nameRoute = '/homeChatting'; //optional

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
            Text("Chatting", style: TextStyle(color: Colors.black)),
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
      // body: ListView.builder(
      //   padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      //   itemCount: 2,
      //   itemBuilder: (context, index) {
      //     return ChatItem(
      //       imageURL: "https://picsum.photos/id/$index/200/300",
      //       title: faker.person.name(),
      //       subTitle: faker.lorem.sentence(),
      //     );
      //   },
      // ),

      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          ListTile(
            title: Text("Alfi Filsafalasafi"),
            subtitle: Text("Jangan lupa mengumpulkan bahan ya"),
            leading: CircleAvatar(),
            trailing: Text(
              "09:00",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(detailChatting.nameRoute);
            },
          )
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subTitle;
  ChatItem(
      {required this.imageURL, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 0),
      title: Text(title),
      subtitle: Text(subTitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageURL),
      ),
      trailing: Text("09:40 AM"),
    );
  }
}
