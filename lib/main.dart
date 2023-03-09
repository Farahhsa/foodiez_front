import 'package:foodiez/pages/create_category.dart';
import 'package:foodiez/pages/create_ingredient.dart';
import 'package:foodiez/pages/create_reciepe.dart';
import 'package:foodiez/pages/homepage.dart';
import 'package:foodiez/pages/landingPage.dart';
import 'package:foodiez/pages/signinPage.dart';
import 'package:foodiez/providers/auth_provide.dart';
import 'package:foodiez/providers/category_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/signupPage.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: "/landing",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Signup(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/landing',
      builder: (context, state) => Landing(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => signinPage(),
    ),
    GoRoute(
      path: '/addCategory',
      builder: (context, state) => AddCategory(),
    ),
    GoRoute(
      path: '/addReciepe',
      builder: (context, state) => AddReciepe(),
    ),
    GoRoute(
      path: '/addIngrediet',
      builder: (context, state) => AddIngredient(),
    ),
  ],
);
