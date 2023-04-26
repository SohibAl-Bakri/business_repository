import 'package:business_repository/modules/home_page/view/part_country.dart';
import 'package:flutter/material.dart';

import '../components/home_card.dart';

class BusinessType extends StatelessWidget {
  const BusinessType({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //*Asia
              const Text(
                'Asia',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),

              //*Africa
              const Text(
                'Africa',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),

              //*Western Asia and North Africa
              const Text(
                'Western Asia and North Africa',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),

              //*Management of Eastern Europe and Central Asia
              const Text(
                'Management of Eastern Europe and Central Asia',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),

              //*Western Europe
              const Text(
                'Western Europe',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),

              //*North America and Oceania
              const Text(
                'North America and Oceania',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),

              //*Latin america
              const Text(
                'Latin america',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return HomeCard(
                    image: 'assets/images/busines_card.jpeg',
                    title: 'Country Name',
                    checkedVis: false,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PartCauntry(
                            title: title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
