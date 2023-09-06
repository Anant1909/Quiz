import 'package:flutter/material.dart';
import 'package:quiz/pages/home.dart';
import 'package:quiz/pages/loading.dart';
import 'package:quiz/pages/loading2.dart';
import 'package:quiz/pages/loading3.dart';
import 'package:quiz/pages/loading4.dart';
import 'package:quiz/pages/loading5.dart';
import 'package:quiz/pages/loading6.dart';
import 'package:quiz/pages/loading7.dart';
import 'package:quiz/pages/que_a.dart';
import 'package:quiz/pages/que_b.dart';
import 'package:quiz/pages/que_c.dart';
import 'package:quiz/pages/score.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) =>const Loading(),
    '/home': (context) => const  Home(),
    '/que_a': (context) => const Quea(),
    '/loading2': (context) => const Loading2(),
    '/que_b': (context) => const Queb(),
    '/loading3': (context) => const Loading3(),
    '/loading4': (context) => const Loading4(),
    '/loading5': (context) => const Loading5(),
    '/loading6': (context) => const Loading6(),
    '/loading7': (context) => const Loading7(),
    '/que_c': (context) => const Quec(),
    '/score': (context) => const Score(),




  },
));










