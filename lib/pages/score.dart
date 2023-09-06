import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/Home.dart';





class Score extends StatefulWidget {
  const Score({Key? key}) : super(key: key);



  @override
  State<Score> createState() => _ScoreState();
}


class _ScoreState extends State<Score> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Thank You",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
      ),
      body:

      Container(
        decoration: const BoxDecoration(
         color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(7.0, 90.0, 0.0, 0.0),
              child: Lottie.asset(
                'assets/animations/animation4.json',
                height: 400,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 190.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal,),
                  ),
                  child: const  Text(
                    'Retake',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
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
