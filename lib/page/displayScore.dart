import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class displayScore extends StatefulWidget {
  static String routeName = '/displayScore';
  const displayScore({super.key});

  @override
  State<displayScore> createState() => _displayScoreState();
}

class _displayScoreState extends State<displayScore> {
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('score');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Image.asset(
              'image/logo.png',
              scale: 4,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        ),
        body: ListView());
  }
}
