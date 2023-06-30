import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/chat/components/chat2.dart';
import 'package:mate_vibes/feature/chat/models/chat_users.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "@diana",
        secondaryText: "Oh!Nice",
        image:
            "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8&w=1000&q=80",
        time: "Now"),
    ChatUsers(
        text: "@mark",
        secondaryText: "That's Great",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT6y4PXu8BGGuzuSd0216CUR0oJDwy5B0uyw&usqp=CAU",
        time: "Yesterday"),
    ChatUsers(
        text: "@marcella",
        secondaryText: "Happy Birthday!",
        image:
            "https://images.unsplash.com/photo-1542570031-5915884ffb12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTJ8NDE4NjExfHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
        time: "4 dec"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_add,
                          color: Colors.black,
                          size: 35,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade400,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade100))),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 1 || index == 3) ? true : false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
