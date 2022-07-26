import 'dart:math';

class Calculation {
  int? age, weight;
  double? height;
  Calculation({this.age, this.height, this.weight});

  getresult() {
    final bmi = weight! / pow(height! / 100, 2);
    print("Your bmi is $bmi");
    return bmi;
  }
}
