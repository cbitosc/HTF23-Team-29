import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hacktober_hackathon/cover_page.dart';
import 'package:hacktober_hackathon/cover_page_two.dart';
import 'package:hacktober_hackathon/hostel_details.dart';
import 'package:hacktober_hackathon/hostel_order.dart';
import 'package:hacktober_hackathon/register.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarBrightness: Brightness.dark,
                    statusBarColor: Colors.orange,
                    statusBarIconBrightness: Brightness.dark,
                    systemNavigationBarColor: Colors.orange)),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'zero hunger'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const CoverPageTwo();
  }
}
