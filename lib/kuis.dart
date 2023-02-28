import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  Function click;
  List<Map<String, Object>> question;
  var soalIndex;
  Kuis(
      {@required this.click,
      @required this.question,
      @required this.soalIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(question[soalIndex]['pertanyaan']),
        ...(question[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(() => click(jawabanText['skor']), jawabanText['teks']);
        }).toList(),
      ],
    );
  }
}
