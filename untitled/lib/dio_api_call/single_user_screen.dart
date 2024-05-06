import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/dio_api_call/http_services.dart';
import 'user.dart';

class SingleUserScreen extends StatefulWidget {
  const SingleUserScreen({super.key});

  @override
  State<SingleUserScreen> createState() => _SingleUserScreenState();
}

class _SingleUserScreenState extends State<SingleUserScreen> {
  late HttpService http;
  late User userResponse;
  Data? user;
  late bool isLoading = true;

  Future getUser() async {
    try {
      isLoading = true;
      Response response;
      response = await http.getRequest("/api/users/2");
      if (response.statusCode == 200) {
        isLoading = false;
        setState(() {
          userResponse = User.fromJson(response.data);
          user = userResponse.data!;
        });

        return response;
      } else {
        isLoading = true;
        print("Status code not 200");
      }
    } on DioException catch (e) {
      isLoading = true;
      print(e.message);
    }
  }

  @override
  void initState() {
    http = HttpService();
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : user != null
            ? Center(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(user!.avatar!),
                      Text("Hello${user!.firstName!}")
                    ],
                  ),
                ),
              )
            : Text("No User Found");
  }
}
