import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          setState(() {
            isHover = value;
          });
        });
      },
      hoverColor: Colors.transparent,
      onTap: () {},
      child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.only(top: kDefaultPadding * 3),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            color: feedbacks[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow],
          ),
          child: Column(children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 10),
                      image: DecorationImage(
                          image: AssetImage(feedbacks[widget.index].userPic)))),
            ),
            Text(feedbacks[widget.index].review,
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic)),
            SizedBox(height: kDefaultPadding * 2),
            Text("Tran Dang Hai", style: TextStyle(fontWeight: FontWeight.bold))
          ])),
    );
  }
}
