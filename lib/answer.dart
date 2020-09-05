import 'package:flutter/material.dart';
import 'widget.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({Key key, this.num}) : super(key: key);
  final int num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: image(answerAnimals[num]),
                ),
                textAnswer(answerTexts[num]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: btnTop(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: btnBack(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> answerAnimals = [
  'cub',
  'cat',
  'lion',
  'tiger',
  'jaguar',
  'leopard',
  'snowleopard',
];

List<String> answerTexts = [
  '成体を見て答えてね',
  'たぶんヒョウ属ではないよ',
  'たぶんライオンだよ',
  'たぶんトラだよ',
  'たぶんジャガーだよ',
  'たぶんヒョウだよ',
  'たぶんユキヒョウだよ',
];
