import 'package:chatsy/features/chats/models/chat_model.dart';
import 'package:chatsy/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatMessageScreen extends StatefulWidget {
  const ChatMessageScreen({super.key, required this.chatModel});

  final ChatModel chatModel;

  @override
  State<ChatMessageScreen> createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FColors.accent,
        leadingWidth: 85,
        titleSpacing: 10,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              SizedBox(
                width: 15,
              ),
              Icon(Iconsax.arrow_left_2, color: Colors.white),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(widget.chatModel.icon),
              ),
            ],
          ),
        ),

        title: InkWell(
          onTap: () {
            
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.chatModel.name, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 2),
              Text('Online', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(Iconsax.call, color: Colors.white ,),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Iconsax.video, color: Colors.white),
            onPressed: () {},
          ),
          
        PopupMenuButton(
          color: FColors.dark,
          onSelected: (value) {
            
          },
          itemBuilder: (context) => [
          
          const PopupMenuItem(
            child: Text('View contact'),
            value: "View contact",
          ),
          const PopupMenuItem(
            child: Text('Media, links, and docs'),
            value: "Media, links, and docs",
          ),
          const PopupMenuItem(
            child: Text('Search'),
            value: "Search",
          ),
          const PopupMenuItem(
            child: Text('Mute notifications'),
            value: "Mute notifications",
          ),
          const PopupMenuItem(
            child: Text('Wallpaper'),
            value: "Wallpaper",
          ),
        ]),
        ],
      ),

      body: Container(
        height: MediaQuery.of(context).size.height, 
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Hello'),
              );
            },
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  
                 
                  child: Card(
                    color: FColors.dark,
                    margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      autocorrect: true,
                      
                      decoration: InputDecoration(
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,

                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.attach_file, color: FColors.grey),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.camera_alt, color: FColors.grey),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        hintText: 'Type a message',
                      
                        prefixIcon: IconButton(
                          icon: Icon(Icons.emoji_emotions, color: FColors.grey),
                          onPressed: () {},
                        ),
                        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: FColors.grey),
                        
                        contentPadding: EdgeInsets.all(5),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(bottom : 8.0),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: FColors.accent,
                    child: Icon(Iconsax.send_1, color: FColors.textWhite),
                  ),
                ),
                const SizedBox(width: 5),
              ],
            
            ),
          )
          ],
        ),

      )
    );
  }
}