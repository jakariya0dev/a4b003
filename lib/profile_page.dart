import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  String imgUrl =
      'https://images.pexels.com/photos/5119214/pexels-photo-5119214.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65,
              backgroundImage: NetworkImage(
                imgUrl,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Angelina Jolie',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                color: Colors.amber,
                child: Row(
                  children: const [
                    Icon(Icons.mail),
                    SizedBox(width: 16),
                    Text('abc@mail.com'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
