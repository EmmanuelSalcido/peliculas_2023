import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
//import 'package:peliculas_2023/widgets/widgets.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //

    return SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.4,
          itemBuilder: (_, int index) {
            return GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: ''),
              child: ClipRRect(
                //para hacer redondeado
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                  placeholder: AssetImage('assets/camara.jpg'),
                  image: NetworkImage(
                      'https://via.placeholder.com/300x400'), //https://via.placeholder.com/300x400 para que se guarde con el tamañ
                ),
              ),
            );
          },
        ));
  }
}
