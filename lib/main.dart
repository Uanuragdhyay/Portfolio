import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      key: navigatorKey,
      theme: ThemeData.dark(),
      title: 'Anurag Upadhyay',
      home: const HomePage() ,
    );
  }
}