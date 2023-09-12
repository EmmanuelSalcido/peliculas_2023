import 'package:flutter/material.dart';
import 'package:peliculas_2023/widgets/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //sombra
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
        title: const Center(child: Text('Peliculas en cine 4k')),
      ),
      body: Column(
        children: [CardSwiper()],
      ),
    );
  }
}
