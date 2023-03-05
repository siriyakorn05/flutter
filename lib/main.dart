import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:log/screen/home.dart';
// import 'package:myapp/screen/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyBXsGD7ocXNaFjvaQ2nHVjvSXzPbWGppIU", 
      appId: "1:701307356381:web:7ff61f9d25bf234afb0734", 
      messagingSenderId: "701307356381", 
      projectId: "fir-projest-84083")
    );
  }else{
      await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
       
        primarySwatch: Colors.green,
      ),
      home: HomeScreen()
    );
  }
}



