import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:log/screen/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/profile.dart';

class data extends StatelessWidget {
  data({super.key});
  final auth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  Profile profile = Profile(
      email: ' ',
      name: ' ',
      lastname: ' ',
      password: ' ');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 228, 93, 93),
        // leading: Icon(Icons.menu),
        title: Text('Data'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          ElevatedButton.icon(
            icon: Icon(
              Icons.logout,
              color: Colors.blue,
            ),
            label: Text(
              "",
            ),
            onPressed: () {
              auth.signOut().then((value) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              });
            },style: ElevatedButton.styleFrom(
                    primary: Colors.black,)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [ Image.network('https://scontent.fbkk22-2.fna.fbcdn.net/v/t39.30808-6/319023601_3462135424009928_5465288259714677749_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFAboa83MgPV-A-6s8kO-Me5GbHOuPkVn_kZsc64-RWf0tHkI6BY40xC10F4wX0la5Z7PL_dSMn9nFd-s9GzS8H&_nc_ohc=FnpqMjzkq64AX_eAJyO&_nc_zt=23&_nc_ht=scontent.fbkk22-2.fna&oh=00_AfAz7RQp1nX4rio2RsQW2y4MJMY3VQcE67fTrNu6lJqtKA&oe=64088D87'),
              Text(
                auth.currentUser!.email!,
                style: TextStyle(fontSize: 20),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
