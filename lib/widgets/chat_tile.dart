import 'package:flutter/material.dart';
import 'package:project_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  // Properties
  final imageUrl;
  final name;
  final text;
  final time;
  final unread;

  // Constructor
  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  text,
                  style: unread ? subTitleTextStyle.copyWith(color: darkBlueColor, fontWeight: FontWeight.w400) : subTitleTextStyle,
                )
              ]),
          Spacer(),
          Text(
            time,
            style: subTitleTextStyle,
          )
        ],
      ),
    );
  }
}
