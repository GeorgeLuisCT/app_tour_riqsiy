import 'package:flutter/material.dart';
import '../main_drawer.dart';

import '../utils.dart';

class PromoList extends StatelessWidget {
  final String image;

  const PromoList({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: <Widget>[Image.asset(image)],
        ),
      ),
    );
  }
}

class PromocionesScreen extends StatelessWidget {
  static const routeName = './promociones';

  const PromocionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context, 'promociones')),
      ),
      drawer: const MainDrawer(),
      body: ListView(
        children: const <Widget>[
          PromoList(image: 'images/promo/promochachaexpedition.jpg'),
          PromoList(image: 'images/promo/promoexp2.jpg'),
          PromoList(image: 'images/promo/promoexp3.jpg'),
          PromoList(image: 'images/promo/promoexpresk.jpg'),
          PromoList(image: 'images/promo/promosuma.jpg')
        ],
      ),
    );
  }
}
