import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/RecentWork.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);
  final int index;
  final VoidCallback press;
  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: widget.press,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow]),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image, fit: BoxFit.contain),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(recentWorks[widget.index].category.toLowerCase()),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(recentWorks[widget.index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(height: 1.5)),
                      SizedBox(height: kDefaultPadding),
                      Text('View Details',
                          style:
                              TextStyle(decoration: TextDecoration.underline))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
