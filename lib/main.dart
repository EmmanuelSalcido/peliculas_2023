import 'package:flutter/material.dart';
import 'package:peliculas_2023/screens/screens.dart';
import 'package:provider/provider.dart';

import 'providers/movies_provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Lista de providers que se van a tener
        ChangeNotifierProvider(
          //avisa que hay un provider
          create: (_) => MoviesProvider(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //para quitar la parte que dice debug
        title: 'Peliculas',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomeScreen(),
          'details': (_) => DetailsScreen(),
        } //establece las rutas
        );
  }
}
