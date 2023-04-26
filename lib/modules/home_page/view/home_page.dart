import 'package:business_repository/modules/home_page/components/home_card.dart';
import 'package:business_repository/modules/home_page/view/business_type.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final imageList = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
  ];
  final businessList = [
    'صناعي',
    'تجاري',
    'زراعي',
    'صناعي',
    'تجاري',
    'زراعي',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  label: Text('Search'),
                  //fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Swiper(
                autoplay: true,
                scrollDirection: Axis.vertical,
                controller: SwiperController(),
                layout: SwiperLayout.TINDER,
                itemWidth: MediaQuery.of(context).size.width,
                itemHeight: 200.0,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                imageList[index],
                              ),
                              fit: BoxFit.fitWidth,
                              colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.4),
                                  BlendMode.colorDodge),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 10,
                          right: 20,
                          child: Text(
                            'Advertisements',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              //backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  );
                },
                itemCount: imageList.length,
              ),
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            child: const Text(
              'View all',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return HomeCard(
                  image: 'assets/images/busines_card.jpeg',
                  title: businessList[index],
                  checkedVis: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessType(
                          title: businessList[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
