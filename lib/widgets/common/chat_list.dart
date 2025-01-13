import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/common/sender_msg_card.dart';

import '../../info.dart';
import 'my_message_card.dart';


class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(),
      scrollDirection: Axis.vertical,
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            msg: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        } else {
          return SenderMessageCard(
            msg: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
      },
    );
  }
}
