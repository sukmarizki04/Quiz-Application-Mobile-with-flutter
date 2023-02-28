import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  int totalScore;
  Function reset;

  Hasil(this.totalScore, this.reset);
  //getter
  String get hasilText {
    String hasil = 'Anda Berhasil';

    if (totalScore <= 8) {
      hasil = 'Anda Hebat sekali';
    } else if (totalScore <= 12) {
      hasil = 'Anda Sedikit Jahat ';
    } else if (totalScore <= 16) {
      hasil = 'anda agak aneh';
    } else {
      hasil = 'Mission Succes';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: reset,
            child: Text('Mulai Ulang!'),
            style: TextButton.styleFrom(primary: Colors.blue[400]),
          ),
        ],
      ),
    );
  }
}
