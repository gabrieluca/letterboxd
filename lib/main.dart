import 'dart:async';

import 'package:flutter/material.dart';
import 'package:letterboxd/common/view/view_constants.dart';

import 'common/data/services/log.dart';
import 'common/dependencies/dependencies.dart';
import 'modules/home/view/popular_movies_screen.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initDependencies();
      runApp(const MyApp());
    },
    (error, stackTrace) {
      Log().error(error.toString(), stackTrace: stackTrace);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Letterboxd',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CustomColors.detailsBackground,
        appBarTheme: AppBarTheme(
          color: const Color(0xFF0d1b4d),
          toolbarHeight: 36,
          titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: const Color(0xFF0d1b4d),
        primarySwatch: Colors.blueGrey,
      ),
      home: Builder(builder: (context) {
        return const PopularMoviesScreen();
      }),
    );
  }
}
