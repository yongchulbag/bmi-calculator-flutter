import 'dart:math';

class CalculateResult {
  CalculateResult({this.height, this.weight});

  int height;
  int weight;
  double resultBMI;

  String ShowBMI() {
    resultBMI = weight / pow(height / 100, 2);
    return resultBMI.toStringAsFixed(1);
  }

  String EvaluateBMI() {
    resultBMI = weight / pow(height / 100, 2);
    if (resultBMI >= 25) {
      return "Overweight";
    } else if (resultBMI > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String AdviceSentenceForBMI() {
    resultBMI = weight / pow(height / 100, 2);
    if (resultBMI >= 25) {
      return "You have a highe than normal body weight. Try to exercise more.";
    } else if (resultBMI > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}

//resultBMI를 젤 위 함수에서 한번만 계산하면 에러나버림 ㅠㅠ