import 'package:flutter/material.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({
    Key? key,
    required this.title,
    required this.image,
    required this.name,
    required this.description,
  }) : super(key: key);

  final String title;
  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.edit_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //const SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                radius: 53,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 10),
            Center(
              child: Text(
                name,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_half),
                Icon(Icons.star_border),
              ],
            ),
            const Padding(
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
            Text(description),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_outlined),
                  label: const Text('Message'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email_outlined),
                  label: const Text('E-mail'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.red,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  label: const Text('Call'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
