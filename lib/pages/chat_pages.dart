import 'package:flutter/material.dart';
import 'package:project_chatty/theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //! Start Receiver Message Widget
    Widget receiverMessage({dynamic imgUrl, dynamic text, dynamic time}) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              imgUrl,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                  color: Color(0xffEBEFF3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    style: mainChat,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: subChat,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    //! End Receiver Message Widget

    //! Start Sender Message Widget
    Widget senderMessage({dynamic imgUrl, dynamic text, dynamic time}) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    style: mainChat,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(time, style: subChat)
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imgUrl,
              width: 40,
            )
          ],
        ),
      );
    }
    //! End Sender Message WIdget

    //! Start Header Widget
    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Color(0xff373737),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/group1.png',
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Nothing',
                  style: titleTextStyle.copyWith(color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '10.987 Members',
                  style: subTitleTextStyle.copyWith(color: Color(0xffDDDDDD)),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/call_btn.png',
              width: 50,
            )
          ],
        ),
      );
    }
    //! End Header Widget

    //! Start Body Widget
    Widget body() {
      return Expanded(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            receiverMessage(
                imgUrl: 'assets/images/friends4.png',
                text: 'How are ya guys ?',
                time: '2:30'),
            receiverMessage(
                imgUrl: 'assets/images/friends6.png',
                text: 'Find here :P',
                time: '3:11'),
            senderMessage(
                imgUrl: 'assets/images/profile2_chat.png',
                text: 'Think about how to deal\nwith this client from hell...',
                time: '22:08'),
            receiverMessage(
                imgUrl: 'assets/images/friends5.png',
                text: 'Love them',
                time: '23:11')
          ],
        ),
      ));
    }
    //! End Body Widget

    //! Start Input Message Widget
    Widget inputMessage() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(75)),
        child: Row(
          children: <Widget>[
            Text(
              'Type message...',
              style: subChat.copyWith(fontSize: 16, color: Color(0xff999999)),
            ),
            Spacer(),
            Image.asset(
              'assets/images/send_btn.png',
              width: 35,
            )
          ],
        ),
      );
    }
    //! End Input Message Widget

    return Scaffold(
      backgroundColor: skyBlueColor,
      floatingActionButton: inputMessage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: <Widget>[header(), body()],
        ),
      ),
    );
  }
}
