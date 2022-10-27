import 'package:flutter/material.dart';

class StrikeWidget extends StatelessWidget {
  final int number;
  const StrikeWidget({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
          color: Colors.cyan.shade50, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Strike',
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            Text(
              'you have $number day strike',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text(
              'you on your road',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
