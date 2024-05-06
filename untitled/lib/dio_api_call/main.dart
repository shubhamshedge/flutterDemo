import 'package:untitled/dio_api_call/single_user_screen.dart';
import '../e_commerce/consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: SingleUserScreen()));
  }
}
