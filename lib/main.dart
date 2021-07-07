import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swizzl/screens/onboarding.dart';
//import 'package:swizzl/screens/home/home.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UploadOnboarding(),
    );
  }
}
 
