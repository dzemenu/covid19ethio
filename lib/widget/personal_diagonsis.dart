import 'package:flutter/material.dart';
import 'package:covid19ethio/res/symptomList.dart';

class PersonalDiagnosis extends StatefulWidget {
  @override
  _PersonalDiagnosisState createState() => _PersonalDiagnosisState();
}

class _PersonalDiagnosisState extends State<PersonalDiagnosis> {
  chooseSymptom(String val) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
            child: Text(
          '$val',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            color: Colors.green,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            color: Colors.yellow,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            color: Colors.red,
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('Personal Diagnosis'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Symptom Comparison',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    'Symptom',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Rare',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Sometimes',
                        style: TextStyle(color: Colors.yellow, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '  Often',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              chooseSymptom(SymptomList.coughing),
              chooseSymptom(SymptomList.fatigue),
              chooseSymptom(SymptomList.bodyAches),
              chooseSymptom(SymptomList.diarrhea),
              chooseSymptom(SymptomList.fever),
              chooseSymptom(SymptomList.headAche),
              chooseSymptom(SymptomList.shortnessOfBreath),
              chooseSymptom(SymptomList.sneezing),
              chooseSymptom(SymptomList.stuffyNose),
            ],
          ),
        ),
      ),
    );
  }
}
