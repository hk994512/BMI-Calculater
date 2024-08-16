import 'package:flutter/material.dart';
import './util/functions.dart';

class CalculateBMI extends StatefulWidget {
  const CalculateBMI({super.key});

  @override
  State<CalculateBMI> createState() => _CalculateBMIState();
}

class _CalculateBMIState extends State<CalculateBMI> {
  double? h;
  double? w;
  String? bmi;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'icons/logo.png',
          width: 90,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(69, 158, 158, 158),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        label: Text("Age"),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          h = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.stacked_bar_chart_sharp),
                        label: Text("Height in feet"),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          w = double.parse(value);
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.line_weight),
                        label: Text("Weight in lb"),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(height: 12),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 4),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.pinkAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        maximumSize: const Size.fromWidth(120),
                      ),
                      onPressed: () {
                        if (h != null && w != null && h! > 0 && w! > 0) {
                          double bmiValue = bmiCalculate(h!, w!);
                          setState(() {
                            bmi = bmiValue.toStringAsFixed(1);
                            updateDescription(bmiValue);
                          });
                        }
                      },
                      child: const Text("Calculate BMI"),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Your BMI: $bmi",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 7),
              Text(description,
                  style: const TextStyle(
                    fontSize: 27,
                    color: Colors.redAccent,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
