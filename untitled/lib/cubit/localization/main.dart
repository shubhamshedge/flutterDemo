import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_localizations.dart';
import 'cubit/locale_cubit.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LocaleCubit()..getSavedLanguage(),
          ),
        ],
        child: BlocBuilder<LocaleCubit, ChangeLocaleState>(
          builder: (context, state) {
            return MaterialApp(
              locale: state.locale,
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                AppLocalizations.delegate,
              ],
              localeResolutionCallback: (deviceLocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (deviceLocale != null &&
                      deviceLocale.languageCode == locale.languageCode) {
                    return deviceLocale;
                  }
                }
      
                return supportedLocales.first;
              },
              debugShowCheckedModeBanner: false,
              home: const HomePage(),
            );
          },
        ),
      ),
    );
  }
}
