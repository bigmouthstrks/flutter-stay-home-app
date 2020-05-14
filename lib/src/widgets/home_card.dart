import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  String _title, _text, _buttonText, _image;
  Icon _icon;

  HomeCard({String title, String text, String buttonText, Icon icon, String image}) {
    this._title = title;
    this._text = text;
    this._buttonText = buttonText;
    this._icon = icon;
    this._image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: AssetImage(_image),
            ),
            ListTile(
              title: Text(_title, style: Theme.of(context).textTheme.headline),
              subtitle: Text(_text, style: Theme.of(context).textTheme.body1),
            ),
            ButtonBar(
              children: <Widget>[
                OutlineButton(
                  child: Row(children: <Widget>[
                      _icon,
                      Divider(indent: 10.0),
                      Text(_buttonText, style: Theme.of(context).textTheme.button),
                    ],
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {
                    print(_title);
                  },
                  padding: EdgeInsets.all(10.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}