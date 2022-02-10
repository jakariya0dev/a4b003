import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('This is page one'),
            SizedBox(
              height: 10,
            ),
            CustomContainer()
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.amber,
      alignment: Alignment.center,
      child: Text(
        'My Custom\nContainer',
        textAlign: TextAlign.center,
      ),
    );
  }
}
