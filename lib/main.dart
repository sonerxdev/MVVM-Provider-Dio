import 'package:flutter/material.dart';
import 'package:mvvm_provider/app/Photo/Model/Photo.dart';
import 'package:mvvm_provider/app/Photo/Service/PhotoService.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PhotoService(),),
          
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
      home: Photo(),
    );
  }
}
