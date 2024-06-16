import 'package:chatsy/features/chats/models/chat_model.dart';
import 'package:chatsy/features/chats/screens/create_group.dart';
import 'package:chatsy/features/chats/screens/widgets/button_card.dart';
import 'package:chatsy/features/chats/screens/widgets/contact_card.dart';
import 'package:chatsy/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectContactScreen extends StatefulWidget {
  const SelectContactScreen({super.key});

  @override
  State<SelectContactScreen> createState() => _SelectContactScreenState();
}

class _SelectContactScreenState extends State<SelectContactScreen> {

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
      appBar: AppBar(
        backgroundColor: FColors.accent,
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Select Contact' , style: Theme.of(context).textTheme.titleMedium!.copyWith(color: FColors.white),),
            Text('256 contacts' , style: Theme.of(context).textTheme.bodySmall!.copyWith(color: FColors.white.withOpacity(0.6))),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: FColors.white,),
            onPressed: () {
              // Navigate to the search screen
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          if(index==0 ){
            return ButtonCard(
              onTap: () {
                Get.to(() => CreateGroup());
              },
              name: 'New group',
              icon: "assets/images/person.jpg",
            );
          }
          if(index==1 ){
            return ButtonCard(
               onTap: () {
                
              },
              name: 'New Contact',
              icon: "assets/images/person.jpg",
            );
          }

          return ContactCard(
           contact: chats[index],
          );
        },
      ),
    );
  }
}