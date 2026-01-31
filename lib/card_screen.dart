import 'package:flutter/material.dart';

class card_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile Card Challenge"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage("images/user.png"),
                ),
              Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Writing code & building Apps",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage('images/communication.png'),
                  ),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/whatsapp.png'),
                  ),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('images/mail.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}