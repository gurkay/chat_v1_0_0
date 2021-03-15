import '../../../components/FilledOutlineButton.dart';
import '../../../constants.dart';
import '../../../models/Chat.dart';
import './ChatCard.dart';
import '../../messages/MessageScreen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: 'Recent Message',
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                isFilled: false,
                press: () {},
                text: 'Active',
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(),
                ),
              ),
            ),
            itemCount: chatsData.length,
          ),
        ),
      ],
    );
  }
}
