import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}

class DioPostExample extends StatefulWidget {
  @override
  _DioPostExampleState createState() => _DioPostExampleState();
}

class _DioPostExampleState extends State<DioPostExample> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void addUser() async {
    String name = nameController.text;
    String email = emailController.text;

    if (name.isEmpty || email.isEmpty) return;

    try {
      Response response = await Dio().post(
        'https://jsonplaceholder.typicode.com/users',
        data: {'name': name, 'email': email},
      );

      User newUser = User.fromJson(response.data);

      print('New user added with ID: ${newUser.id}'); // I/flutter (22779): New user added with ID: 11

      // Clear the text fields after successful submission
      nameController.clear();
      emailController.clear();
    } catch (e) {
      print('Error adding user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dio POST Example')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: addUser,
              child: Text('Add User'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: DioPostExample()));
}