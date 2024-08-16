import 'package:flutter/material.dart';
import './calculate_bmi.dart';
import 'themes/theme.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: AppBar(title: const Text("BMI")),
        body: const CalculateBMI(),
      ),
    ));
