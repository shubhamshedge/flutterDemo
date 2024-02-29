import 'package:flutter/material.dart';

import '../constants.dart';

class Week1SafeArea extends StatelessWidget {
  const Week1SafeArea({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.WEEK1_SafeArea),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (context, index) => ListTile(
            title: Text('ListTile $index'),
            subtitle: Text('safe area'),
          ),
        ),
      ),
    );
  }
}
