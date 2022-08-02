import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/models/Feedback.dart';

import '../../components/section_title.dart';
import '../../constants.dart';
import 'components/feedback_card.dart';

class FeedBackSection extends StatelessWidget {
  const FeedBackSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTile(
              title: 'Feedback Received',
              subTitle: "Client's testimonials that inspired me a lot",
              color: Color(0xFF00B1FF)),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  feedbacks.length, (index) => FeedbackCard(index: index)))
        ],
      ),
    );
  }
}
