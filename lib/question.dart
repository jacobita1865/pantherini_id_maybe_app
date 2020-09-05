import 'package:flutter/material.dart';
import 'widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key key, this.qNum}) : super(key: key);
  final int qNum;

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          children: <Widget>[
            btnRight(rightQuestionTexts[widget.qNum], context),
            btnLeft(leftGuestionTexts[widget.qNum], context),
          ],
        ),
        textQuestion(questionTexts[widget.qNum]),
      ],
    );
  }
}

List<String> rightQuestionTexts = [
  '幼体',
  '大きい',
  'ある',
  'シマ',
  'ある',
  '黄色系',
];

List<String> leftGuestionTexts = [
  '成体',
  '小さい',
  'ない',
  '丸など斑点',
  'ない',
  '白',
];

List<String> questionTexts = [
  '今見ているのは...',
  '大きさはあなたより',
  '模様が...',
  'どんな模様？',
  '模様の中に模様が',
  '毛色は？',
];

bool t0, t1, t2, t3, t4;

List<bool> triggers = [
  t0,
  t1,
  t2,
  t3,
  t4,
];
