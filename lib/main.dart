import 'package:flutter/material.dart';
import 'package:wallapix/pages/collectionpage.dart';
import 'package:wallapix/pages/communitypage.dart';
import 'package:wallapix/pages/favouritepage.dart';
import 'package:wallapix/pages/homepage.dart';
import 'package:wallapix/pages/navigationa.dart';
import 'package:wallapix/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});    
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const OnboardingPage(),
        '/navigation': (_) => const NavigationExample(),
        '/community': (_) => const CommunityPage(),
        '/home': (_) => const HomePage(),
        '/collection': (_) => const CollectionPage(),
        '/favourite': (_) => const FavouritePage(),
      },
    );
  }
}
