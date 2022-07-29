import 'package:flutter/material.dart';

import 'section/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection()
          ],
        ),
      ),
    );
  }
}
