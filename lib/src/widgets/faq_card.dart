import 'package:flutter/material.dart';

class FaqCard extends StatelessWidget {
  String _question, _answer;

  FaqCard({String question, String answer}){
    this._question = question;
    this._answer = answer;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: EdgeInsets.all(4.0),
          child: ExpansionTile(
            title: Text(_question, style: TextStyle(fontSize: 20)),
            children: <Widget>[
              Text(_answer, style: Theme.of(context).textTheme.body2),
            ],
          ),
        ),
      );
  }
}
