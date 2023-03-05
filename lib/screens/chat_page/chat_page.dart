import 'package:chat_app_sample_flutter/models/chat.dart';
import 'package:chat_app_sample_flutter/screens/chat_detail_page/chat_detail_page.dart';
import 'package:chat_app_sample_flutter/screens/chat_page/chat_item_view/chat_item_view.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Chat> chatUsers = [
    Chat("Jane Russel", "Awesome Setup", "https://i.pravatar.cc/150?img=1",
        "Now"),
    Chat("Glady's Murphy", "That's Great", "https://i.pravatar.cc/150?img=2",
        "Yesterday"),
    Chat("Jorge Henry", "Hey where are you?", "https://i.pravatar.cc/150?img=3",
        "31 Mar"),
    Chat("Philip Fox", "Busy! Call me in 20 mins",
        "https://i.pravatar.cc/150?img=4", "28 Mar"),
    Chat("Debra Hawkins", "Thankyou, It's awesome",
        "https://i.pravatar.cc/150?img=5", "23 Mar"),
    Chat("Jacob Pena", "will update you in evening",
        "https://i.pravatar.cc/150?img=6", "17 Mar"),
    Chat("Andrey Jones", "Can you please share the file?",
        "https://i.pravatar.cc/150?img=7", "24 Feb"),
    Chat("John Wick", "How are you?", "https://i.pravatar.cc/150?img=8",
        "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Conversations",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  //contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatItemView(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ChatDetailPage();
                    }));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
