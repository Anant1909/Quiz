import 'package:flutter/material.dart';
import 'package:quiz/pages/loading4.dart';
import 'package:quiz/pages/loading5.dart';



class Queb extends StatefulWidget {
  const Queb({Key? key}) : super(key: key);



  @override
  State<Queb> createState() => _QuebState();
}
List<String> name =[
  "Nicola Tesla",
  "Galileo Galilei",
  "Benjamin Franklin",
  "Thomas E. Edison"
];

class _QuebState extends State<Queb> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Question 2",
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
      SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.fromLTRB(7.0, 60.0, 0.0, 0.0),
                child:  Text(
                  "Who invented Electric Bulb?" ,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 140.0, 0.0, 00.0),
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                              if (selectedIndex == 3) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading5(),
                                  ),
                                );
                              }
                              else if (selectedIndex == 0) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading4(),
                                  ),
                                );
                              }
                              else if (selectedIndex == 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading4(),
                                  ),
                                );
                              }
                              else if (selectedIndex == 2) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading4(),
                                  ),
                                );
                              }





                            },

                            title:Text(
                              name[index],
                              style: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
