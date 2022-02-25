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
    if (resultBMI >= 25) {
      return "Overweight";
    } else if (resultBMI > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String AdviceSentenceForBMI() {
    if (resultBMI >= 25) {
      return "You have a highe than normal body weight. Try to exercise more.";
    } else if (resultBMI > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}

// resultBMI를 젤 위 함수에서 한번만 계산하면 에러나버림 ㅠㅠ

//원룸 말고 약국에 와서 실행해보니 SHOWBMI에서 한번만 계산해도 에러안남 미쳤 ㅋㅋㅋㅋㅋ