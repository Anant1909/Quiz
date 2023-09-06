import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/que_c.dart';


class Loading5 extends StatefulWidget {
  const Loading5({Key? key}) : super(key: key);

  @override
  _Loading5State createState() => _Loading5State();
}

class _Loading5State extends State<Loading5> {
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
        builder: (context) => const Quec(),
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
