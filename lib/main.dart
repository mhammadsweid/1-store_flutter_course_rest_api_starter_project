import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'consts/global_colors.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter 3.0.4 ',
          theme: ThemeData(
            scaffoldBackgroundColor: lightScaffoldColor,
            primaryColor: lightCardColor,
            backgroundColor: lightBackgroundColor,
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(
                color: lightIconsColor,
              ),
              backgroundColor: lightScaffoldColor,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: lightTextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              elevation: 0,
            ),
            iconTheme: IconThemeData(
              color: lightIconsColor,
            ),

            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.black,
              selectionColor: Colors.blue,

              // selectionHandleColor: Colors.blue,
            ),

            // textTheme: TextTheme()
            // textTheme: Theme.of(context).textTheme.apply(
            //       bodyColor: Colors.black,
            //       displayColor: Colors.black,
            //     ),
            cardColor: lightCardColor,
            brightness: Brightness.light,
            colorScheme: ThemeData().colorScheme.copyWith(
                  secondary: lightIconsColor,
                  brightness: Brightness.light,
                ),
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
