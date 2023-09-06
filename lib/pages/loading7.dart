import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/pages/que_c.dart';


class Loading7 extends StatefulWidget {
  const Loading7({Key? key}) : super(key: key);

  @override
  _Loading7State createState() => _Loading7State();
}

class _Loading7State extends State<Loading7> {
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
              'assets/animations/animation3.json',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
