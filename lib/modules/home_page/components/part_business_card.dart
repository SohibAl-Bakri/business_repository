import 'package:flutter/material.dart';

class PartBusinessCard extends StatelessWidget {
  const PartBusinessCard({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  final String image;
  final String name;
  final String description;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: Container(
                    width: 100,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 0,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 3),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        image,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
