import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String imageSrc, text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        color: Color(0xFFE8F0F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(imageSrc, height: 40),
            SizedBox(width: kDefaultPadding),
            Text(text)
          ],
        ));
  }
}
