// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          //const SizedBox(height: 10),
          Center(
            child: CircleAvatar(
              radius: 48,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(
                  'assets/images/profile.png',
                ),
              ),
            ),
          ),
          //const SizedBox(height: 10),
          Center(
            child: Text(
              'User Name',
              style: TextStyle(fontSize: 16),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Divider(),
          ),

          //const SizedBox(height: 10),
          const Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          //const SizedBox(height: 10),
          Text('description'),
          const SizedBox(height: 10),
          const Text(
            'Phone Number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text('0723456789'),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
