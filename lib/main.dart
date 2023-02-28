import 'package:flutter/material.dart';
import './kuis.dart';
import './hasil.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyWidget({Key key}) : super(key: key);
  var _soalIndex = 0;
  var totalScore = 0;
  var question = [
    {
      'pertanyaan': 'Kapan anda ingin Berangkat?',
      'jawaban': [
        {'teks': 'London', 'skor': 1}, //alt+shift
        {'teks': 'France', 'skor': 10},
        {'teks': 'singapure', 'skor': 80}
      ],
    },
    {
      'pertanyaan': 'Makanan yang anda sukai?',
      'jawaban': [
        {'teks': 'Nasi Padang', 'skor': 100},
        {'teks': 'Nasi Goreng Kampuang', 'skor': 20},
        {'teks': 'Mie Ayam', 'skor': 1}
      ],
    },
    {
      'pertanyaan': 'Apa Minum kesukaanmu?',
      'jawaban': [
        {'teks': 'Juice', 'skor': 70},
        {'teks': 'Coffe', 'skor': 1},
        {'teks': 'milo', 'skor': 1}
      ]
    },
  ];

  void reset() {
    setState(() {
      _soalIndex = 0;
      totalScore = 0;
    });
  }

  void click(int score) {
    totalScore = totalScore + score;
    // print('Tombol sudah ditekan');
    setState(() {
      _soalIndex += 1;
    });

    if (_soalIndex < question.length) {
      print('Masih Ada soal Berikutnnya');
    } else {
      print('sudah tidak ada soalnya');
    }
    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    var answer = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Aplikasi'),
        ),
        body: _soalIndex < question.length
            ? Kuis(
                click: click,
                question: question,
                soalIndex: _soalIndex,
              )
            : Hasil(totalScore, reset),
      ),
    );
  }
}
