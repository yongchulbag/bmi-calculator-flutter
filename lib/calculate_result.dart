import 'dart:math';


class CalculateResult {

  CalculateResult({this.height, this.weight});

  final int height;
  final int weight;
  double _resultBMI;

  String calculateBMI()
  {
    double _resultBMI=weight/pow(height/100,2);
    return _resultBMI.toStringAsFixed(1);
  }

  String evaluateBMI() {
    if (_resultBMI>=25) {return "Overweight";}
    else if (_resultBMI>18.5) {return "Normal";}
    else {return "Underweight";}
  }

  String adviceSentenceForBMI() {
    if (_resultBMI>=25) {return "You have a highe than normal body weight. Try to exercise more.";}
    else if (_resultBMI>18.5) {return "You have a normal body weight. Good job!";}
    else {return "You have a lower than normal body weight. You can eat a bit more.";
  }

}