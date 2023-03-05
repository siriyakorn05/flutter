import 'package:flutter/material.dart';
import 'package:log/screen/home.dart';
import 'package:log/screen/register.dart';

import 'login.dart';
class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('index'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network('https://scontent.fbkk22-2.fna.fbcdn.net/v/t39.30808-6/319023601_3462135424009928_5465288259714677749_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFAboa83MgPV-A-6s8kO-Me5GbHOuPkVn_kZsc64-RWf0tHkI6BY40xC10F4wX0la5Z7PL_dSMn9nFd-s9GzS8H&_nc_ohc=FnpqMjzkq64AX_eAJyO&_nc_zt=23&_nc_ht=scontent.fbkk22-2.fna&oh=00_AfAz7RQp1nX4rio2RsQW2y4MJMY3VQcE67fTrNu6lJqtKA&oe=64088D87'),
                 SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label: Text('ออก', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      var loginScreen = HomeScreen();
                      return loginScreen;
                    }));
                  },
                ),
              ),
               Text(''),
              
             
           
            ],
          ),
        ),
      ),
    );
  }

  String newMethod() => 'assets/image/logo.png';
}
