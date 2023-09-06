import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/score.dart';


class Loading6 extends StatefulWidget {
  const Loading6({Key? key}) : super(key: key);

  @override
  _Loading6State createState() => _Loading6State();
}

class _Loading6State extends State<Loading6> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));

    Navigator. pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Score(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body: SafeArea(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Lottie.asset(
              'assets/animations/animation2.json',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
