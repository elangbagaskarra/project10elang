import 'package:akhir/app/modules/home/views/HomePage.dart';
import 'package:akhir/app/modules/home/views/LoginPage.dart';
import 'package:akhir/app/modules/home/views/SignUp.dart';
import 'package:akhir/app/modules/home/views/firstPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDSScxx7DhNLf0fi4X1mKX5oenDwbuuYxo",
        appId: "1:845204618443:android:b323e8abfbec2158c46f4e",
        messagingSenderId: "845204618443",
        projectId: "akhir-b8f15",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get username => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => FirstPage(),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(
              name: '',
              address: '',
              phoneNumber: '',
              email: '',
            ),
      },
    );
  }
}
