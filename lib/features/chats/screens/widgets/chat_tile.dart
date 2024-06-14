import 'package:chatsy/features/chats/models/chat_model.dart';
import 'package:chatsy/features/chats/screens/chatmessage.dart';
import 'package:chatsy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(() => ChatMessageScreen(chatModel: chatModel,));
      },
      child: Column(
        children: [
          ListTile(
            minVerticalPadding: 20,
            leading: CircleAvatar(
              radius: 25,
              backgroundImage:  AssetImage(chatModel.isGroup ? 'assets/images/group.jpg' : 'assets/images/person.jpg'),
            ),
            trailing: Text(chatModel.time),
            title:  Text(chatModel.name , style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all , size: 20,),
                const SizedBox(width: 5),
                SizedBox(width: FSizes.displayWidth(context) * 0.5 , child: Text(chatModel.message, maxLines: 1, overflow: TextOverflow.ellipsis,)),
              ],
            ),
          
          ),
          Padding(padding:  EdgeInsets.only(left: 12, right: 12), child: const Divider())
        ],
      ),
    );
  }
}