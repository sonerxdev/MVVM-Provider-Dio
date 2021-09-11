import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/picsum.com/Photo.dart';
import 'package:mvvm_provider/app/picsum.com/Service/PhotoService.dart';
import 'package:mvvm_provider/app/unsplash.com/Service/UnsplashService.dart';
import 'package:mvvm_provider/app/unsplash.com/Unsplash.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => PhotoService(),
          ),
          ChangeNotifierProvider(
            create: (_) => UnsplashService(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Unsplash(),
    );
  }
}
