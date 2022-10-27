import 'package:flutter/material.dart';
import 'package:habits_app/mvc/view/widgets/show_habits.dart';

import 'main_static_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2 - 20;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Choose the first habit you want to build',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              children: const [
                ShowHabits(
                  text: 'Exercise',
                  child: Icon(
                    Icons.expand,
                    color: Colors.cyanAccent,
                    size: 120,
                  ),
                ),
                ShowHabits(
                  text: 'Read book',
                  child: Icon(
                    Icons.book,
                    color: Colors.amberAccent,
                    size: 120,
                  ),
                ),
                ShowHabits(
                  text: 'Social media detox',
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.indigoAccent,
                    size: 120,
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainStaticPage()));
          },
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
