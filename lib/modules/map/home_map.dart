import 'package:flutter/material.dart';

class HomeMap extends StatelessWidget {
  const HomeMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/map.png'),
          ),
        ),
      ),
    );
  }
}
