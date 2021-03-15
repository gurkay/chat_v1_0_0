import 'package:chat_v1_0_0/screens/messages/components/ChatInputField.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';
import 'Message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  Message(message: dummyChatMessages[index]),
              itemCount: dummyChatMessages.length,
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
