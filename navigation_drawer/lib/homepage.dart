import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:navigation_drawer/drawer/profile.dart';
import 'package:navigation_drawer/drawer/about.dart';
import 'package:navigation_drawer/drawer/notification.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            _buiderHeader(),
            _buildItem(
              icon: Icons.home_rounded,
              title: 'Home',
              onTap: () => Navigator.pop(context),
            ),
            _buildItem(
              icon: Icons.person,
              title: 'Profile',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home())),
            ),
            _buildItem(
              icon: Icons.notifications_on_rounded,
              title: 'Notification',
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications())),
            ),
            _buildItem(
              icon: Icons.info,
              title: 'About',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const About())),
            ),
            
          ],
        ),
      ),
    );
  }
}

_buiderHeader() {
  return const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 40,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Your Name',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          )
        ],
      ));
}

_buildItem(
    {required IconData icon,
    required String title,
    required GestureTapCallback onTap}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: onTap,
  );
}
