import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/components/section_title.dart';
import 'package:flutter_portfolio_web/models/RecentWork.dart';

import '../../components/default_button.dart';
import '../../components/hire_me_card.dart';
import '../../constants.dart';
import 'components/recent_work_cart.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png"))),
      child: Column(
        children: [
          Transform.translate(offset: Offset(0, -80), child: HireMeCard()),
          SectionTile(
              color: Color(0xFFFFB100),
              subTitle: 'My Strong Arenas',
              title: 'Recent Works'),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                        index: index,
                        press: () {},
                      )),
            ),
          )
        ],
      ),
    );
  }
}
