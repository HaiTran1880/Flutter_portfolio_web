import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:500,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFFE8F0F9),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg_img_2.png"))),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTile(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A)),
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding * 2),
            constraints: BoxConstraints(maxWidth: 1110),
            padding: EdgeInsets.all(kDefaultPadding * 3),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialCard(
                      iconSrc: "assets/images/skype.png",
                      name: "Tran Dang Hai",
                      color: Color(0xFFD9FFFC),
                      press: () {},
                    ),
                    SocialCard(
                      iconSrc: "assets/images/whatsapp.png",
                      name: "Tran Dang Hai",
                      color: Color(0xFFE4FFC7),
                      press: () {},
                    ),
                    SocialCard(
                      iconSrc: "assets/images/messanger.png",
                      name: "Tran Dang Hai",
                      color: Color(0xFFE8F0F9),
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 2,
                ),
                ContactForm()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Wrap(
      spacing: kDefaultPadding * 2.5,
      runSpacing: kDefaultPadding * 1.5,
      children: [
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
                labelText: "Your Name", hintText: "Enter Your Name"),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
                labelText: "Your Email", hintText: "Enter Your Email"),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
                labelText: "Project Type", hintText: "Enter Project Type"),
          ),
        ),
        SizedBox(
          width: 470,
          child: TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
                labelText: "Project Budget", hintText: "Enter Project Budget"),
          ),
        ),
        SizedBox(
          child: TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write about your discription"),
          ),
        ),
        SizedBox(height: kDefaultPadding * 2),
        Center(
          child: FittedBox(
            child: DefaultButton(
              imageSrc: 'assets/images/contact_icon.png',
              press: () {},
              text: 'Contact Me!',
            ),
          ),
        )
      ],
    ));
  }
}
