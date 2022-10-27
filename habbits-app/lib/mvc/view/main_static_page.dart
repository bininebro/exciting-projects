import 'package:flutter/material.dart';

import 'widgets/strike_widget.dart';

class MainStaticPage extends StatefulWidget {
  const MainStaticPage({Key? key}) : super(key: key);

  @override
  State<MainStaticPage> createState() => _MainStaticPageState();
}

class _MainStaticPageState extends State<MainStaticPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Biniyame',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              StrikeWidget(number: 3)
            ],
          ),
        ),
      ),
    );
  }
}
