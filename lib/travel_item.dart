import 'package:flutter/material.dart';
import 'dart:async';
import './models/travel.dart';
import './screens/travel_detail_screen.dart';

import '../utils.dart';

class TravelItem extends StatefulWidget {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> priceTable;
  final List<String> descripcion;
  final Accesibilidad accesibilidad;
  final Planes planes;
  final List<String> imageCarousel;

  const TravelItem({
    super.key,
    required this.id,
    required this.categories,
    required this.title,
    required this.priceTable,
    required this.descripcion,
    required this.accesibilidad,
    required this.planes,
    required this.imageCarousel,
  });

  @override
  _TravelItemState createState() => _TravelItemState();
}

class _TravelItemState extends State<TravelItem> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _autoPlayTimer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _startAutoPlay(); // Inicia la reproducción automática
  }

  @override
  void dispose() {
    _pageController.dispose();
    _autoPlayTimer
        ?.cancel(); // Cancela el temporizador cuando el widget se destruye
    super.dispose();
  }

  void _startAutoPlay() {
    _autoPlayTimer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % widget.imageCarousel.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.fastOutSlowIn,
        );
        setState(() {
          _currentPage = nextPage;
        });
      }
    });
  }

  String get accesibilidadText {
    switch (widget.accesibilidad) {
      case Accesibilidad.Economico:
        return t(context, 'Económico');
      case Accesibilidad.Medio:
        return t(context, 'Medio');
      case Accesibilidad.Costoso:
        return t(context, 'Costoso');
      case Accesibilidad.Gratis:
        return t(context, 'Gratis');
      default:
        return '';
    }
  }

  String get planesText {
    switch (widget.planes) {
      case Planes.SoloHospedaje:
        return t(context, 'Solo Hospedaje');
      case Planes.DesayunoIncluidos:
        return t(context, 'Desayuno Incluido');
      case Planes.TodoIncluido:
        return t(context, 'Todo Incluido');
      case Planes.GuiaIncluido:
        return t(context, 'Guía Incluido');
      case Planes.GuiaHospedaje:
        return t(context, 'Guía y Hospedaje Incluidos');
      case Planes.NadaIncluido:
        return t(context, 'Nada Incluido');
      case Planes.SoloBoleto:
        return t(context, 'Solo Boleto');
      case Planes.soloProducto:
        return t(context, 'Solo Producto');
      default:
        return '';
    }
  }

  void selectTravel(BuildContext context) {
    Navigator.of(context).pushNamed(
      TravelDetailScreen.routeName,
      arguments: widget.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTravel(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: SizedBox(
                    height: 200,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: widget.imageCarousel.length,
                      itemBuilder: (ctx, index) {
                        return Image.asset(
                          widget.imageCarousel[index],
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: Container(
                    width: 200,
                    //color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(
                          15), // Agrega bordes redondeados
                    ),
                    child: Text(
                      t(context, widget.title),
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: <Widget>[
                      const Icon(Icons.attach_money),
                      const SizedBox(width: 6),
                      Text(t(context, accesibilidadText)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.all_inclusive),
                      const SizedBox(width: 6),
                      Text(t(context, planesText)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}