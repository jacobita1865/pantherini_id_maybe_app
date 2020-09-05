import 'package:flutter/material.dart';
import 'package:pantheriniidmaybeapp/answer.dart';
import 'package:pantheriniidmaybeapp/main.dart';
import 'package:pantheriniidmaybeapp/question.dart';

Widget textTitle(String t) {
  return Text(
    t,
    style: const TextStyle(
      fontSize: 25,
      locale: Locale('ja'),
    ),
  );
}

Widget image(String i) {
  return Image.asset(
    'images/$i.jpg',
    fit: BoxFit.cover,
    height: 300,
  );
}

Widget btnStart(BuildContext context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    color: Colors.orangeAccent,
    child: const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'START',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          locale: Locale('ja'),
        ),
      ),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute<bool>(builder: (context) {
          t0 = false;
          t1 = false;
          t2 = false;
          t3 = false;
          t4 = false;
          return const QuestionPage(qNum: 0);
        }),
      );
    },
  );
}

Widget btnRight(String t, BuildContext context) {
  return Expanded(
    child: SizedBox(
      height: double.infinity,
      child: FlatButton(
        padding: const EdgeInsets.only(top: 200),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            t,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              locale: Locale('ja'),
            ),
          ),
        ),
        color: Colors.blueAccent,
        onPressed: () {
          Navigator.push(
            context,
            // 右
            MaterialPageRoute<bool>(builder: (context) {
              if (t0 == false &&
                  t1 == false &&
                  t2 == false &&
                  t3 == false &&
                  t4 == false) {
                // Q:0
                return const AnswerPage(num: 0);
              } else if (t0 == true &&
                  t1 == false &&
                  t2 == false &&
                  t3 == false &&
                  t4 == false) {
                // Q:1
                t1 = true;
                return const QuestionPage(qNum: 2);
              } else if (t0 == true &&
                  t1 == true &&
                  t2 == false &&
                  t3 == false &&
                  t4 == false) {
                // Q:2
                t2 = true;
                return const QuestionPage(qNum: 3);
              } else if (t0 == true &&
                  t1 == true &&
                  t2 == true &&
                  t3 == false &&
                  t4 == false) {
                // Q:3
                return const AnswerPage(num: 3);
              } else if (t0 == true &&
                  t1 == true &&
                  t2 == true &&
                  t3 == true &&
                  t4 == false) {
                // Q:4
                return const AnswerPage(num: 4);
              } else {
                // Q:5
                return const AnswerPage(num: 5);
              }
            }),
          );
        },
      ),
    ),
  );
}

Widget btnLeft(String t, BuildContext context) {
  return Expanded(
    child: SizedBox(
      height: double.infinity,
      child: FlatButton(
        padding: const EdgeInsets.only(bottom: 200),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            t,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              locale: Locale('ja'),
            ),
          ),
        ),
        color: Colors.orangeAccent,
        onPressed: () {
          Navigator.push(
            context,
            // 左
            MaterialPageRoute<bool>(builder: (context) {
              if (t0 == false &&
                  t1 == false &&
                  t2 == false &&
                  t3 == false &&
                  t4 == false) {
                // Q:0
                t0 = true;
                return const QuestionPage(qNum: 1);
              } else if (t0 == true &&
                  t1 == false &&
                  t2 == false &&
                  t3 == false &&
                  t4 == false) {
                // Q:1
                return const AnswerPage(num: 1);
              } else if (t0 == true &&
                  t1 == true &&
                  t2 == false &&
                  t3 == false &&
                  t4 == false) {
                // Q:2
                return const AnswerPage(num: 2);
              } else if (t0 == true &&
                  t1 == true &&
                  t2 == true &&
                  t3 == false &&
                  t4 == false) {
                // Q:3
                t3 = true;
                return const QuestionPage(qNum: 4);
              } else if (t0 == true &&
                  t1 == true &&
                  t2 == true &&
                  t3 == true &&
                  t4 == false) {
                // Q:4
                t4 = true;
                return const QuestionPage(qNum: 5);
              } else {
                return const AnswerPage(num: 6);
              }
            }),
          );
        },
      ),
    ),
  );
}

Widget textQuestion(String t) {
  return Center(
    // child: Container(
    child: Text(
      t,
      style: const TextStyle(
        fontSize: 40,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        locale: Locale('ja'),
        decoration: TextDecoration.none,
      ),
      // ),
    ),
  );
}

Widget textAnswer(String t) {
  return Container(
    margin: const EdgeInsets.only(top: 100), //他にいい方法はないものか
    color: Colors.white54,
    width: double.infinity,
    height: 100,
    child: Center(
      child: Text(
        t,
        style: const TextStyle(
          fontSize: 25,
          locale: Locale('ja'),
        ),
      ),
    ),
  );
}

Widget btnTop(BuildContext context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    color: Colors.orangeAccent,
    child: const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Top',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          locale: Locale('ja'),
        ),
      ),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute<bool>(
          builder: (context) {
            t0 = false;
            t1 = false;
            t2 = false;
            t3 = false;
            t4 = false;
            return const Page();
          },
        ),
      );
    },
  );
}

Widget btnBack(BuildContext context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    color: Colors.blueAccent,
    child: const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Back',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          locale: Locale('ja'),
        ),
      ),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
