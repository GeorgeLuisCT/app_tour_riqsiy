import 'package:flutter/material.dart';
import 'package:app_tour_riqsiy/screens/unity_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../dummy_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils.dart';

class TravelDetailScreen extends StatefulWidget {
  static const routeName = './travel-detail';

  const TravelDetailScreen({super.key});

  @override
  State<TravelDetailScreen> createState() => _TravelDetailScreenState();
}

class _TravelDetailScreenState extends State<TravelDetailScreen> {
  int _currentPage = 0;

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        t(context, text),
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget buildPriceContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 100,
      width: 350,
      child: child,
    );
  }

  Widget buildDescriptionContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 350,
      child: child,
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo lanzar $url';
    }
  }

  Widget buildImageCarousel(List<String> images) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemCount: images.length,
            itemBuilder: (ctx, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 48,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 8),
                          Text(t(context, 'Error al cargar la imagen')),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == entry.key
                      ? Theme.of(context).primaryColor
                      : Colors.grey.withOpacity(0.5),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final travelId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTravel =
        DUMMY_TRAVELS.firstWhere((travel) => travel.id == travelId);

    return Scaffold(
      appBar: AppBar(
        title: Text(t(context, selectedTravel.title)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildImageCarousel(selectedTravel.imageCarousel),
            buildSectionTitle(context, 'Costos'),
            buildPriceContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).primaryColorDark,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      t(context, selectedTravel.priceTable[index]),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                itemCount: selectedTravel.priceTable.length,
              ),
            ),
            buildSectionTitle(context, 'Descripción'),
            buildDescriptionContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text(t(context, '# ${(index + 1)}')),
                  ),
                  title: Text(
                    t(context, selectedTravel.descripcion[index]),
                  ),
                ),
                itemCount: selectedTravel.descripcion.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (selectedTravel.whatsappLink != null)
                    ElevatedButton.icon(
                      icon: const Icon(FontAwesomeIcons.whatsapp,
                          color: Colors.green),
                      label: Text(t(context, 'WhatsApp')),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                      ),
                      onPressed: () {
                        _launchURL(selectedTravel.whatsappLink!);
                      },
                    ),
                  if (selectedTravel.website != null)
                    ElevatedButton.icon(
                      icon: const Icon(Icons.web, color: Colors.blue),
                      label: Text(t(context, 'Página Web')),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                      ),
                      onPressed: () {
                        _launchURL(selectedTravel.website!);
                      },
                    ),
                ],
              ),
            ),
            if (selectedTravel.title == 'travel_k1_title')
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const UnityScreen(sceneName: "SampleScene"),
                    ),
                  );
                },
                child: Text(t(context, 'Abrir Unity')),
              ),
          ],
        ),
      ),
    );
  }
}
