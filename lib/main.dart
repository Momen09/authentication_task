import 'package:authentication_task/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/LoginOrSignup/loginOrSignup.dart';

void main()async {
  //TODO: initialize Firebase here
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA_fw_3T1C3bi25mvP2v1NePghN5EEXKnY",
      appId: "1:102398167540:android:48ef7063bcf7909fca91a1",
      messagingSenderId: "102398167540",
      projectId: "authentication-21c9f",
      // Add other required parameters here...
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
       return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: LogInOrSignup.routeName,
          routes: routes,
          theme: ThemeData(fontFamily: 'Changa'),
        );
      },
    );
  }
}