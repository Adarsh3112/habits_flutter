import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  final String emoticonFace;

  const Emojis({Key? key, required this.emoticonFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.blue[600]),
      padding: EdgeInsets.all(15),
      child: (Text(
        emoticonFace,
        style: TextStyle(fontSize: 26),
      )),
    );
  }
}
