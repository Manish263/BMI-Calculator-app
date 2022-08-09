import 'package:bmi_calculator/Input_main_Page.dart';
import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_Content.dart';
import 'package:bmi_calculator/reusable_Card.dart';
import 'ProjectBrain.dart';


const bottomcontainerHeight = 80.0;
const cardColour = Color(0xFF1D1E33);
const inactivecardColour = Colors.redAccent;
const textStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const LargeButtonStyle = TextStyle(
  fontSize: 27.0,
  fontWeight: FontWeight.bold,
);
enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? SelectedGender;
  int height = 180;
  int weight = 60;
  int age = 16;
  // Color maleCardcolor = inactivecardColour;
  // Color femaleCardcolor=inactivecardColour;
  //
  // void UpdateColor(Gender Selectedgender){
  //   if(Selectedgender==Gender.Male){
  //     if(maleCardcolor==inactivecardColour){
  //       maleCardcolor=cardColour;
  //       femaleCardcolor=inactivecardColour;
  //     }
  //     else{
  //       maleCardcolor=inactivecardColour;
  //     }
  //   }
  //   if(Selectedgender==Gender.Female){
  //     if(femaleCardcolor==inactivecardColour){
  //       femaleCardcolor=cardColour;
  //       maleCardcolor=cardColour;
  //     }
  //     else{
  //       femaleCardcolor=inactivecardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCode(
                      onPress: () {
                        setState(() {
                          SelectedGender = Gender.Male;
                        });
                      },
                      colour: SelectedGender == Gender.Male
                          ? cardColour
                          : inactivecardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReUsableCode(
                      onPress: () {
                        setState(() {
                          SelectedGender = Gender.Female;
                        });
                      },
                      colour: SelectedGender == Gender.Female
                          ? cardColour
                          : inactivecardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      )),
                ),
              ],
            )),
            Expanded(
              child: ReUsableCode(
                onPress: () {},
                colour: cardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: textStyle,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTickMarkColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCode(
                    onPress: () {},
                    colour: cardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: textStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                            SizedBox(
                              width: 16.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCode(
                      onPress: () {},
                      colour: cardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: textStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                              SizedBox(
                                width: 16.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            )),
            BottomButton(buttonTitle: 'CALCULATE',
            ontap: () {
              CalculatorBrain calc = new CalculatorBrain(height: height, weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage(
                    bmiresult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  )));
            },)
          ]),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap,required this.buttonTitle});

  final VoidCallback ontap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
          style: LargeButtonStyle,),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom:16.0),
        width: double.infinity,
        height: bottomcontainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPress});

  final IconData icon;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 0.0,
      disabledElevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 54.0,
        height: 54.0,
      ),
    );
  }
}
