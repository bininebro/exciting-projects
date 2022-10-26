import 'package:flutter/material.dart';

class HabitDetail extends StatefulWidget {
  const HabitDetail({Key? key}) : super(key: key);

  @override
  State<HabitDetail> createState() => _HabitDetailState();
}

class _HabitDetailState extends State<HabitDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Meditation',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Your life and habits',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 20),
        const Text(
          '20% on the way',
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 5),
        Slider(
          value: .2,
          onChanged: (value) {},
          onChangeStart: (value) {},
          onChangeEnd: (value) {},
          activeColor: Colors.amber,
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.calendar_month)),
                Column(
                  children: [
                    Text(
                      'Reminder',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Daily',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.greenAccent),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 5),
        Container(
          height: 80,
          child: Stack(
            children: [
              Column(
                children: [
                  const Text(
                    'Strek',
                    style: TextStyle(color: Colors.purple),
                  ),
                  Text(
                    '10 day streak',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    'Your logest streak',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
