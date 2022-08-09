import 'dart:ffi';
import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;
  late double _BMI;

  String calculateBMI(){
    _BMI= weight/ pow(height/ 100,2);
    return _BMI.toStringAsFixed(1);
  }
  String getResult(){
    if(_BMI >= 25){
      return 'Overweight';

    }
    else if(_BMI >18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_BMI >= 25){
      return 'you have a higher than Normal body weight, Try Excercising';

    }
    else if(_BMI >18.5){
      return 'You have a Normal weight. Good Job!';
    }
    else{
      return 'You have a Lower body weight, You need to eat more ';
    }
  }
}

