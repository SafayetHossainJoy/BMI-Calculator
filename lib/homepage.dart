import 'package:bmi/calculation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 20;
  int weight = 54;
  double height = 135;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                            color: isMale == true
                                ? Colors.teal
                                : Color(0xff1D1F33),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 60,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                            color: isMale == false
                                ? Colors.teal
                                : Color(0xff1D1F33),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 60,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  color: Color(0xff1D1F33),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${height.toStringAsFixed(0)}",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(fontSize: 12, color: Colors.white70),
                      ),
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: Colors.orange,
                          thumbColor: Colors.pink,
                          activeTrackColor: Colors.white,
                          inactiveTickMarkColor: Colors.grey),
                      child: Slider(
                          min: 90,
                          max: 220,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          color: Color(0xff1D1F33),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Weight",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  if (weight > 0) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white54,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white54,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          color: Color(0xff1D1F33),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Age",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  if (age > 0) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white54,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white54,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                var cal = Calculation(age: age, height: height, weight: weight);
                bmi = cal.getresult();

                showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Your BMI is $bmi'),
                    content: Text(bmi > 23
                        ? 'you are OverWeight, Eat less'
                        : bmi > 18
                            ? "You are perfect"
                            : "You are underWeight, eat more"),
                    actions: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.pink,
                alignment: Alignment.center,
                child: Text(
                  "Calculator",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  var bmi;
}
