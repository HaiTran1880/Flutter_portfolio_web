import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
    required this.color,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final Color color;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(children: [
        Container(
          padding: EdgeInsets.only(bottom: 72),
          width: 8,
          height: 100,
          color: Colors.black,
          child: DecoratedBox(decoration: BoxDecoration(color: color)),
        ),
        SizedBox(width: kDefaultPadding / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(subTitle,
                style:
                    TextStyle(fontWeight: FontWeight.w200, color: kTextColor)),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black))
          ],
        )
      ]),
    );
  }
}
