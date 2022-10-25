import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2 - 20;
    return Column(
      children: [
        const Text(
          'Choose the first habit you want to build',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Wrap(
          children: [
            Container(
              height: height,
              width: 200,
              child: Column(
                children: [
                  Container(
                    height: height - 50,
                    width: 180,
                  ),
                  const Text(
                    'Exercise',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
