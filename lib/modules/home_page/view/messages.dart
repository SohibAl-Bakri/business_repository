import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  Messages({super.key});

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
    5,
    9,
    0,
    7,
    3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Messames'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  nameList[index],
                ),
                subtitle: const Text('Hello'),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(imageList[index]),
                ),
                trailing: Visibility(
                  visible: numberList[index] != 0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Center(
                      child: Text((numberList[index]).toString()),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
