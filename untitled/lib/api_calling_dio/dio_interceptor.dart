import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioInterceptExample extends StatefulWidget {
  @override
  _DioInterceptExampleState createState() => _DioInterceptExampleState();
}

class _DioInterceptExampleState extends State<DioInterceptExample> {
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    setupInterceptors();
    fetchUsers();
  }

  void setupInterceptors() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Perform tasks before sending the request
        print('shubham -> Sending request to: ${options.uri}'); //I/flutter (24367): shubham -> Sending request to: https://jsonplaceholder.typicode.com/users
        handler.next(options);
      },
      onResponse: (response, handler) {
        // Perform tasks on successful response
        print('shubham -> Received response with status: ${response.statusCode}'); //I/flutter (24367): shubham -> Received response with status: 200
        handler.next(response);
      },
      onError: (error, handler) {
        // Handle errors
        print('shubham -> Error occurred: $error');
        handler.next(error);
      },
    ));
  }

  Future<void> fetchUsers() async {
    try {
      Response response = await dio.get('https://jsonplaceholder.typicode.com/users');
      List<dynamic> jsonData = response.data;
      print('shubham -> Users: $jsonData');
    } catch (e) {
      print('Error fetching users: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dio Interceptor Example')),
      body: Center(child: Text('Check the console for logs')),
    );
  }
}

void main() {
  runApp(MaterialApp(home: DioInterceptExample()));
}