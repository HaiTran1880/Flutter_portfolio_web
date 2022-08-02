import 'package:collection/src/list_extensions.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimmonial",
    "Contact"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          boxShadow: [kDefaultShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: menuItems
            .mapIndexed((index, element) => buildMenuItem(index, element))
            .toList(),
      ),
    );
  }

  Widget buildMenuItem(
    int index,
    String e,
  ) =>
      InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
            constraints: BoxConstraints(minWidth: 122),
            height: 100,
            child: Stack(alignment: Alignment.center, children: [
              Text(e),
              //Hover
              AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                      selectedIndex != index && hoverIndex == index ? -20 : -32,
                  child: Image.asset('assets/images/Hover.png')),
              //Select
              AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom: selectedIndex == index ? -2 : -32,
                  child: Image.asset('assets/images/Hover.png'))
            ])),
      );
}
