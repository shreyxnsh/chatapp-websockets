import 'package:chatsy/features/chats/models/chat_model.dart';
import 'package:chatsy/features/chats/screens/selectcontact.dart';
import 'package:chatsy/features/chats/screens/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.chatmodels});
  final List<ChatModel> chatmodels;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


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

      body: ListView.builder(itemCount: widget.chatmodels.length , itemBuilder: (context, index) {
        return ChatTile(
          chatModel: widget.chatmodels[index],
        );
      }),
    );
  }
}