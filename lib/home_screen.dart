import 'package:business_repository/modules/home_page/view/home_page.dart';
import 'package:business_repository/modules/home_page/view/messages.dart';
import 'package:business_repository/modules/home_page/view/notificatios.dart';
import 'package:business_repository/modules/home_page/view/setting.dart';
import 'package:business_repository/modules/map/home_map.dart';
import 'package:business_repository/modules/user_profile/user_profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  final List _pagesTitle = const [
    Text("Home"),
    Text("Map"),
    Text("User Profile"),
  ];

  final List _pages = [
    HomePage(),
    const HomeMap(),
    const UserProfile(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _pagesTitle[_selectedTab],
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Notifications(),
                ),
              );
            },
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Messages(),
                ),
              );
            },
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      drawer: Drawer(
        width: 260,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: SizedBox(
          width: 100,
          height: double.infinity,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                accountName: const Text(
                  'User Name',
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: const Text(
                  'username@example.com',
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/profile.png'),
                ),
              ),
              ListTile(
                title: const Text('Setting'),
                leading: const Icon(Icons.settings_suggest_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingPage(),
                    ),
                  );
                },
              ),
              const ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        //selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
