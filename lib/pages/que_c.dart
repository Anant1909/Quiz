import 'package:flutter/material.dart';
import 'package:quiz/pages/loading6.dart';
import 'package:quiz/pages/loading7.dart';



class Quec extends StatefulWidget {
  const Quec({Key? key}) : super(key: key);



  @override
  State<Quec> createState() => _QuecState();
}
List<String> name =[
  "Screw Gauge",
  "Slip Gauge",
  "Vernier Calliper",
  "Ruler"
];

class _QuecState extends State<Quec> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Question 3",
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
                padding:  EdgeInsets.fromLTRB(7.0, 20.0, 0.0, 0.0),
                child:  Text(
                  "Identify the Instrument." ,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Image(image: AssetImage(
                  'assets/images/queimg.jpeg'
              ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,70.0, 0.0, 00.0),
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
                              if (selectedIndex == 2) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading6(),
                                  ),
                                );
                              }
                              else if (selectedIndex == 0) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading7(),
                                  ),
                                );
                              }
                              else if (selectedIndex == 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading7(),
                                  ),
                                );
                              }
                              else if (selectedIndex == 3) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loading7(),
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
