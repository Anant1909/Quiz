import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/que_b.dart';


class Loading4 extends StatefulWidget {
  const Loading4({Key? key}) : super(key: key);

  @override
  _Loading4State createState() => _Loading4State();
}

class _Loading4State extends State<Loading4> {
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
              'assets/animations/animation3.json',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
