import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calling_dio/user_list_consumer.dart';
import 'package:untitled/api_calling_dio/user_repository.dart';
import 'package:untitled/api_calling_dio/user_view_model.dart';

import 'api_service.dart';

void main() {
  // Create Dio instance for HTTP requests
  final Dio dio = Dio();

  // Create ApiService instance with the Dio instance
  final ApiService apiService = ApiService(dio: dio);

  // Create UserRepository instance with the ApiService instance
  final UserRepository userRepository = UserRepository(apiService: apiService);

  runApp(
    MultiProvider(
      providers: [
        // Provide the UserViewModel with UserRepository dependency to manage user data and API calls
        ChangeNotifierProvider<UserViewModel>(
          create: (context) => UserViewModel(userRepository: userRepository),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List', // Meta Title for the App
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const UserListConsumer(),
    );
  }
}