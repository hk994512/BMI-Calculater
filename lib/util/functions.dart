import 'dart:math';

double result = 1;
String description = "";
double bmiCalculate(double ht, double weight) {
  double heightInInches = ht * 12;
  result = weight / pow(heightInInches, 2) * 703;
  return result;
}

void updateDescription(double bmiValue) {
  if (bmiValue < 18.5) {
    description = 'Underweight';
  } else if (bmiValue >= 18.5 && bmiValue <= 24.9) {
    description = 'Normal';
  } else if (bmiValue >= 25 && bmiValue <= 29.9) {
    description = 'Overweight';
  } else {
    description = 'Obese';
  }
}
