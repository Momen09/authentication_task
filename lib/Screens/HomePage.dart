import 'package:flutter/material.dart';
import '../../../../constants.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/HomePage";
  final String name;

  const HomePage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: textWhite),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome, $name!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: mainButtonsSize),
              ),
              SizedBox(height: 20),
              Text(
                "successful authenticated",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: mainButtonsSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
