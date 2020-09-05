import 'package:flutter/material.dart';
import 'widget.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: const Page(),
      ),
    );

class Page extends StatelessWidget {
  const Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            textTitle('たぶんヒョウ属です。'),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            image('top'),
            btnStart(context),
          ],
        ),
      ),
    );
  }
}
