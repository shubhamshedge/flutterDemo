import 'package:flutter/material.dart';


// function to trigger the app build process
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      // appbar
      appBar: AppBar(
        title: const Text('GeeksForGeeks'),
        backgroundColor: const Color.fromRGBO(15, 157, 88, 1),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$count',
            style: const TextStyle(fontSize: 50.0),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Text(''
                'increase'),
          ),

          // RaisedButton is deprecated and shouldn't be used.
          // Use ElevatedButton insetad.

          // RaisedButton(
          //   // callback function
          //   // this increments the value
          //   // by 1 each time the Raised button is pressed
          //   onPressed: () {
          //     setState(() {
          //       count++;
          //     });
          //   },
          //   child: const Text(''
          //       'increase'),
          // )
        ],
      ),
    );
  }
}