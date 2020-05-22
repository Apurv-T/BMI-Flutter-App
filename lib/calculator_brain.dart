import 'dart:math';

class calculatorBrain {
  calculatorBrain({this.weight, this.height});
  final int height;
  final int weight;
  double bmi = 0;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String resultBMI() {
    bmi = double.parse(calculateBMI());
    if (bmi >= 30) {
      return 'Obesity';
    } else if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    bmi = double.parse(calculateBMI());
    if (bmi >= 30) {
      return 'Your BMI result is quite high. Control diet and exercise more!';
    } else if (bmi >= 25) {
      return 'Your BMI result is higher than normal body weight. Exercise more!';
    } else if (bmi > 18.5) {
      return 'Your BMI result is normal. Good Job!';
    } else {
      return 'Your BMI result is quite low. Eat more!';
    }
  }
}
