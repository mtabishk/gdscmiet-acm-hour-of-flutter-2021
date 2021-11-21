import 'package:bmi_calculator_app/app/result_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _age = 18;
  int _weight = 45;
  int _height = 100;
  bool _isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MALE ",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.male,
                                color: _isMale ? Colors.white : Colors.white24,
                                size: 52.0,
                              ),
                              onPressed: () => setState(() {
                                _isMale = !_isMale;
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      height: 180,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "FEMALE ",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.female,
                                color: _isMale ? Colors.white24 : Colors.white,
                                size: 52.0,
                              ),
                              onPressed: () => setState(() {
                                _isMale = !_isMale;
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              _age.toString(),
                              style: TextStyle(
                                  fontSize: 52.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _age++;
                                    });
                                  },
                                  icon: Icon(Icons.add,
                                      size: 28, color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _age--;
                                    });
                                  },
                                  icon: Icon(Icons.remove,
                                      size: 28, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      height: 180,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "WEIGHT (Kg)",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              _weight.toString(),
                              style: TextStyle(
                                  fontSize: 52.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _weight--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Container(
                height: 200,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "HEIGHT (cm)",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        _height.toString(),
                        style: TextStyle(
                            fontSize: 52.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        value: _height.toDouble(),
                        min: 100.0,
                        max: 300.0,
                        divisions: 100,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white24,
                        label: _height.toString(),
                        onChanged: (double newValue) {
                          setState(() {
                            _height = newValue.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => ResultPage(
                          bmiResult: calculateBMI(_weight, _height),
                        ),
                      ),
                    );
                  },
                  child: Text("CALCULATE YOUR BMI"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String calculateBMI(int weight, int height) {
    double heightInMts = height * 0.01;
    final bmi = weight / (heightInMts * heightInMts);
    return bmi.toStringAsFixed(2);
  }
}
