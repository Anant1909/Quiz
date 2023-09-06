import 'package:flutter/material.dart';
import 'package:quiz/pages/home.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator. pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Home(),
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
            const Image(
              image: AssetImage(
                  'assets/images/logo.jpeg'
              ),
            ),
            Lottie.asset(
              'assets/animations/animation1.json',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
