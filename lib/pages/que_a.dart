import 'package:flutter/material.dart';
import 'package:quiz/pages/loading2.dart';
import 'package:quiz/pages/loading3.dart';


class Quea extends StatefulWidget {
  const Quea({Key? key}) : super(key: key);

  @override
  State<Quea> createState() => _QueaState();
}

List<String> name = [
  "Albert Einstein",
  "Nicola Tesla",
  "Thomas E. Edison",
  "Isaac Newton"
];

class _QueaState extends State<Quea> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Question 1",
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
          child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(7.0, 40.0, 0.0, 0.0),
                    child: Text(
                      "Name the scientist who proposed the 'Theory of Relativity'.",

                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,

                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7.0, 90.0, 0.0, 0.0),
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 6.0
                            ),
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
                                  if (selectedIndex == 0) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Loading2(),
                                      ),
                                    );
                                  }
                                 else if (selectedIndex == 1) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Loading3(),
                                      ),
                                    );
                                  }
                                  else if (selectedIndex == 2) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Loading3(),
                                      ),
                                    );
                                  }
                                  else if (selectedIndex == 3) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Loading3(),
                                      ),
                                    );
                                  }

                                },
                                title: Text(
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
      ),
    );
  }
}
