import 'package:flutter/material.dart';
import 'package:flutter_application_12/page_two.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List containerList = [CustomContainer1(), CustomContainer2()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is page one'),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 220,
              width: 220,
              child: containerList[index],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    index = 0;
                    setState(() {});
                  },
                  child: const Text('Container One'),
                ),
                ElevatedButton(
                  onPressed: () {
                    index = 1;
                    setState(() {});
                  },
                  child: const Text('Container Two'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.amber,
      alignment: Alignment.center,
      child: const Text(
        'My Custom\nContainer',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.indigo,
      alignment: Alignment.center,
      child: const Text(
        'My Custom\nContainer 2',
        textAlign: TextAlign.center,
      ),
    );
  }
}
