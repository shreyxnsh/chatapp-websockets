import 'package:chatsy/features/chats/screens/chat.dart';
import 'package:chatsy/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: FColors.accent, title: const Text('Chatsy') , actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Navigate to the search screen
          },
        ),
       
        PopupMenuButton(
          onSelected: (value) {
            
          },
          itemBuilder: (context) => [
          
          const PopupMenuItem(
            child: Text('New group'),
            value: "New group",
          ),
          const PopupMenuItem(
            child: Text('New broadcast'),
            value: "New broadcast",
          ),
          const PopupMenuItem(
            child: Text('WhatsApp Web'),
            value: "WhatsApp Web",
          ),
          const PopupMenuItem(
            child: Text('Starred messages'),
            value: "Starred messages",
          ),
          const PopupMenuItem(
            child: Text('Settings'),
            value: "Settings",
          ),
        ]),
      ],
      bottom: TabBar(
          unselectedLabelStyle: Theme.of(context).textTheme.bodyText1,
          labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold , color: FColors.white),
          controller: _tabController,
          labelColor: FColors.white,
          indicatorColor: FColors.white,
          
          
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      
      
      
     
      body: TabBarView(children: [
            Center(child: Text('Camera')),
            ChatScreen(),
            Center(child: Text('Status')),
            Center(child: Text('Calls')),
          ], controller: _tabController),
    );
  }
}