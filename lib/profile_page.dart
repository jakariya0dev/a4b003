import 'package:flutter/material.dart';
import 'package:flutter_application_12/page_one.dart';
import 'package:flutter_application_12/page_two.dart';

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
              margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
              padding: EdgeInsets.all(16),
              color: Colors.amber,
              child: Row(
                children: const [
                  Icon(Icons.mail),
                  SizedBox(width: 16),
                  Text('abc@mail.com'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 16),
              padding: EdgeInsets.all(16),
              color: Colors.amber,
              child: Row(
                children: const [
                  Icon(Icons.phone),
                  SizedBox(width: 16),
                  Text('+8801700000000'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PageOne();
                    }));
                  },
                  child: const Text('Page One'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageTwo()));
                  },
                  child: const Text('Page Two'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
