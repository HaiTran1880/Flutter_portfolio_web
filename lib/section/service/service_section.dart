import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/models/Service.dart';

import '../../components/section_title.dart';
import '../../constants.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.color})
      : super(key: key);
  final String title, subTitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTile(color: color, subTitle: subTitle, title: title),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length,
                  (index) => ServiceCard(
                        index: index,
                      )))
        ],
      ),
    );
  }
}
