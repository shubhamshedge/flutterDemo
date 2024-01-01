import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:untitled/e_commerce/consts/consts.dart';
import 'package:untitled/e_commerce/views/splash_screen/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //we are using getX so replace MaterialApp to Get material App
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular
      ),
      title: appname,
      home: const SplashScreen(),
    );
  }
}
