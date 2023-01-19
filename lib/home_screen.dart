import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

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
          backgroundColor: Colors.teal,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.group),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),

              // Text('Chats'),
              // Text('Status'),
              // Text('Calls'),
            ],
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15),
            Icon(Icons.search_rounded),
            SizedBox(width: 0),
            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New group'),
                      ),
                      const PopupMenuItem(
                        value: 1,
                        child: Text('Setting'),
                      ),
                      const PopupMenuItem(
                        value: 1,
                        child: Text('Log Out'),
                      ),
                    ]),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            // GROUP
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(index / 2 == 2
                          ? 'https://images.pexels.com/photos/6389355/pexels-photo-6389355.jpeg?auto=compress&cs=tinysrgb&w=1600'
                          : 'https://images.pexels.com/photos/8553931/pexels-photo-8553931.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('This is group widget'),
                   trailing: Icon(Icons.notifications_on_outlined,color: Colors.teal,),
                  );
                }),
            // CHATS
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('John Wick'),
                    subtitle: Text('Where is my dog ?'),
                    trailing: Text('9:14 PM'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/6389355/pexels-photo-6389355.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                    ),
                  );
                }),
            // STATUS
            Text('Status'),
            // CALLS
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/6389355/pexels-photo-6389355.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text(index / 2 == 0
                        ? 'Missed a Voice call'
                        : 'Missed a Video call'),
                    trailing: Icon(
                      index / 2 == 0 ? Icons.phone : Icons.video_call_outlined,
                      color: Colors.teal,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
