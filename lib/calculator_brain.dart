import 'dart:math';

class CalculatoBrain {
  final int height;
  final int weight;
  double _bmi = 0.0;

  CalculatoBrain({this.height, this.weight});

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise More ';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep it up';
    } else {
      return 'You have a lower than normal body weight. you can eat a bit more';
    }
  }
}
