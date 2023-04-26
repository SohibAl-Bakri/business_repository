import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

  final imageList = [
    'assets/images/person1.jpeg',
    'assets/images/person4.jpg',
    'assets/images/person2.jpeg',
    'assets/images/person5.jpg',
    'assets/images/person3.jpg',
    'assets/images/person6.jpg',
  ];
  final nameList = [
    'حسام منصور',
    'سارة محمد',
    'محمد الاحمد',
    'الين محمود',
    'احمد الاشقر',
    'لميس عياش',
  ];
  final numberList = [
    0,
    0,
    1,
    1,
    0,
    1,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            color: numberList[index] == 0 ? Colors.blue[100] : Colors.white,
            child: ListTile(
              title: Text(
                nameList[index],
              ),
              subtitle: const Text('Add offer'),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(imageList[index]),
              ),
              trailing: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/busines_card.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
