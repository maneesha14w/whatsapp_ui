import 'package:flutter/material.dart';

import '../../colours.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard({Key? key, required this.msg, required this.date})
      : super(key: key);

  final String msg;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 30, 20),
                child: Text(
                  msg,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      date,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
