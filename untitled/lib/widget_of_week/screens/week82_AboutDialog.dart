import 'package:flutter/material.dart';

class Week82AboutDialog extends StatelessWidget {
  final String title;

  const Week82AboutDialog({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          child: Text('About'),
          onPressed: () => showAboutDialog(
            context: context,
            applicationIcon: Icon(Icons.accessibility),
            applicationLegalese: 'Legalese',
            applicationName: 'About App',
            applicationVersion: '1.0.0',
            children: [
              Text('A Text Widget'),
            ],
          ),
        ),
      ),
    );
  }
}
