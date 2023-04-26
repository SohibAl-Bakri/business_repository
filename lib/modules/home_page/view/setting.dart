import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              'Language',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              title: Text('Language'),
              subtitle: Text(
                'english',
              ),
              leading: Icon(Icons.language),
              //onTap: () {},
            ),
          ),
          SizedBox(height: 5),
          Divider(),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              'Theme',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              title: Text('Theme'),
              subtitle: Text('light'),
              leading: Icon(Icons.color_lens_rounded),
              trailing: Icon(Icons.brightness_auto_outlined),
              //onTap: () {},
            ),
          ),
          SizedBox(height: 5),
          Divider()
        ],
      ),
    );
  }
}
