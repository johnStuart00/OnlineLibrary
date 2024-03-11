import 'package:flutter/material.dart';

class LeftNavBarWidget extends StatelessWidget {
  const LeftNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('tagamly_sozler'),
            accountEmail: const Text(
              'tagamlysozler@gmai.com',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://media.istockphoto.com/id/476098860/vector/wonderful-morning-in-the-blue-mountains.jpg?s=612x612&w=0&k=20&c=0nuLvsWKXPReu01RvbXTKIwlUYxOQvoXD_qVBrsapxc=',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("Favorites"),
            onTap: () {
              print('favorite clicked');
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text("Group"),
            onTap: () {
              print('Group clicked');
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Share"),
            onTap: () {
              print('Share clicked');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            onTap: () {
              print('Notifications clicked');
            },
          ),
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              print('Settings clicked');
            },
          ),
          ListTile(
            leading: const Icon(Icons.insert_drive_file),
            title: const Text("Policies"),
            onTap: () {
              print('Policies clicked');
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app_rounded),
            title: const Text("Exit"),
            onTap: () {
              print("Exit clicked");
            },
          ),
        ],
      ),
    );
  }
}
