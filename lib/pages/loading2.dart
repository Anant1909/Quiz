import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/que_b.dart';

class Loading2 extends StatefulWidget {
  const Loading2({Key? key}) : super(key: key);

  @override
  _Loading2State createState() => _Loading2State();
}

class _Loading2State extends State<Loading2> {
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
        builder: (context) => const Queb(),
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
