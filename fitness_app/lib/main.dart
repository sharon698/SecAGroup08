import 'package:fitness_app/screens/home_page/home_page.dart';
import 'package:fitness_app/screens/splashscreen/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        HomePage.id: (context) => HomePage(),
      },
      initialRoute: WelcomePage.id,
      home: WelcomePage(),
    );
  }
}
