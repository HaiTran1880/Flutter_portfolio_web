import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/components/default_button.dart';
import 'package:flutter_portfolio_web/components/my_outline_button.dart';

import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam."),
              ),
              ExperienceCard(numOfExp: '08'),
              Expanded(
                child: AboutSectionText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam."),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  press: () {},
                  text: "Hire me!"),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                  imageSrc: "assets/images/download.png",
                  press: () {},
                  text: "Download CV!")
            ],
          )
        ],
      ),
    );
  }
}
