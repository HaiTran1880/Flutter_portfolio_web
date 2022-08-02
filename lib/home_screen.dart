import 'package:flutter/material.dart';

import 'constants.dart';
import 'section/about/about_section.dart';
import 'section/contact/contact_section.dart';
import 'section/feedback/feedback_section.dart';
import 'section/recent_work/recent_work_section.dart';
import 'section/service/service_section.dart';
import 'section/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            SizedBox(height: 50),
            ServiceSection(
                color: Color(0xFFFF0000),
                title: "Service Offerings",
                subTitle: "My Strong Arenas"),
            RecentWorkSection(),
            FeedBackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
