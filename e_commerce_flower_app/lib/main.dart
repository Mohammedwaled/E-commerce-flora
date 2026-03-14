

// ignore_for_file: prefer_const_constructors, use_super_parameters


import 'package:e_commerce_flower_app/pages/register.dart';

import 'package:e_commerce_flower_app/provider/card.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
  home: Register(),
      ),
    );
  }
}







