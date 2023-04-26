import 'package:business_repository/modules/home_page/components/part_business_card.dart';
import 'package:business_repository/modules/home_page/view/customer_profile.dart';
import 'package:flutter/material.dart';

class BartBusiness extends StatelessWidget {
  BartBusiness({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  final imageList = [
    'assets/images/person1.jpeg',
    'assets/images/person4.jpg',
    'assets/images/person2.jpeg',
    'assets/images/person5.jpg',
    'assets/images/person3.jpg',
    'assets/images/person6.jpg',
  ];
  final nameList = [
    'محمد الاحمد',
    'سارة محمد',
    'حسام منصور',
    'الين محمود',
    'احمد الاشقر',
    'لميس عياش',
  ];
  final descriptionList = [
    '5 سنوات',
    '9 سنوات',
    '8 سنوات',
    '7 سنوات',
    '12 سنوات',
    '10 سنوات',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return PartBusinessCard(
            name: nameList[index],
            description: descriptionList[index],
            image: imageList[index],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CustomerProfile(
                    title: title,
                    image: imageList[index],
                    name: nameList[index],
                    description: descriptionList[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
