import 'dart:math';

class BMIBrain {
  final int height;
  final int weight;
  double bmi;
  BMIBrain({this.height, this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String resultInterpretation() {
    if (bmi >= 25) {
      return 'You are higher than normal body weight. Try to excercise more.';
    } else if (bmi >= 18.5) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
