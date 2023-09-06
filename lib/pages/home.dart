import 'package:flutter/material.dart';
import 'package:quiz/pages/que_a.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "It's Quiz Time!",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg4.jpg'),
            fit: BoxFit.cover,
          ),
        ),

           child: Center(

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => const Quea(

                        ),
                      ),
                    );
                    },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal,),
                  ),
                  child: const  Text(
                    'Start',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                ),
           ),
      ),
    );
  }
}
