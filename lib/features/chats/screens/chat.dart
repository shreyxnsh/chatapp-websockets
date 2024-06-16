import 'package:chatsy/features/chats/models/chat_model.dart';
import 'package:chatsy/features/chats/screens/selectcontact.dart';
import 'package:chatsy/features/chats/screens/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<ChatModel> chats = [
    ChatModel(
      name: 'Jyotsna',
      icon: 'assets/images/person.jpg',
      isGroup: false,
      time: '12:00',
      currentMessage: 'Call me when you are free!',
    ),
    ChatModel(
      name: 'Jane Doe',
      icon: 'assets/images/person.jpg',
      isGroup: true,
      time: '12:00',
      currentMessage: 'Hello there!',
    ),
    ChatModel(
      name: 'Anand',
      icon: 'assets/images/person.jpg',
      isGroup: true,
      time: '12:00',
      currentMessage: 'Hello',
    ),
    ChatModel(
      name: 'Vansh',
      icon: 'assets/images/group.jpg',
      isGroup: true,
      time: '12:00',
      currentMessage: 'Hello there!',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // make it round
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.green,
        onPressed: () {
          // Navigate to the new chat screen
          Get.to(() => SelectContactScreen());
        },
        child: const Icon(Icons.message),
      ),

      body: ListView.builder(itemCount: chats.length , itemBuilder: (context, index) {
        return ChatTile(
          chatModel: chats[index],
        );
      }),
    );
  }
}