import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/que_a.dart';


class Loading3 extends StatefulWidget {
  const Loading3({Key? key}) : super(key: key);

  @override
  _Loading3State createState() => _Loading3State();
}

class _Loading3State extends State<Loading3> {
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
        builder: (context) => const Quea(),
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
              'assets/animations/animation3.json',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
