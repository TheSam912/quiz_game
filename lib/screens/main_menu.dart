import 'package:flutter/material.dart';
import 'package:flutter_quiz_game/screens/quizz_screen.dart';

import '../ui/shared/color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Column(
              children: const [
                Text(
                  "Quizz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Application",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: RawMaterialButton(
                onPressed: () {
                  //Navigating the the Quizz Screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizzScreen(),
                      ));
                },
                shape: const StadiumBorder(),
                fillColor: AppColor.secondaryColor,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24.0),
                  child: Text(
                    "Start the Quizz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
