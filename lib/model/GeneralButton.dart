import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({Key key, this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Color(0xff800000))),
      color: Colors.white,
      textColor: Color(0xff800000),
      padding: EdgeInsets.all(8.0),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }
}
