import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/Calls.dart';
import 'package:whatsapp_ui_clone/screens/Status.dart';
import 'package:whatsapp_ui_clone/screens/camera.dart';
import 'package:whatsapp_ui_clone/screens/chats.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 125,
          title: Uihelper.CustomText(
            text: 'WhatsApp',
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/Search.png'),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
