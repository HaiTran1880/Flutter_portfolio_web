import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key? key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);
  final String iconSrc, name;
  final Color color;
  final VoidCallback press;
  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
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
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow]),
        child: Row(children: [
          Image.asset(
            widget.iconSrc,
            height: 80,
            width: 80,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(widget.name)
        ]),
      ),
    );
  }
}
