import 'package:flutter/material.dart';
import 'package:project_chatty/theme.dart';
import 'package:project_chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff373737),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
        backgroundColor: Color(0xff373737),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40),
                  Image.asset(
                    'assets/images/profile2.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Daffa Badran',
                      style: TextStyle(color: whiteColor, fontSize: 20)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Data Analyst | Web Designer',
                    style: TextStyle(color: Color(0xffC4C4C4), fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Friends', style: titleTextStyle),
                        ChatTile(
                          imageUrl: 'assets/images/friends4.png',
                          name: 'Bobby Tarantino',
                          text: "Yo!!!, what's poppin ?",
                          time: 'Now',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/friends5.png',
                          name: 'NF',
                          text: 'What do you really want...',
                          time: '2:30',
                          unread: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group1.png',
                          name: 'Nothing',
                          text: 'Why does everyone ca...',
                          time: '11:11',
                          unread: false,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group2.png',
                          name: 'Michigan Club',
                          text: 'Here here we can go',
                          time: '7:11',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group3.png',
                          name: 'Bentley',
                          text: 'The car which does not...',
                          time: '11:11',
                          unread: true,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
