import 'package:flutter/material.dart';
import '';

class Jawaban extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);
  Function handlePilih;
  String textJawaban;
  Jawaban(this.handlePilih, this.textJawaban);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          //jawaban satu
          onPressed: handlePilih,
          style: ElevatedButton.styleFrom(primary: Colors.purple[800]),
          child: Text(textJawaban)),
    );
  }
}
