import 'package:flutter/material.dart';
import '../main_drawer.dart';
import '../screens/map_screen.dart';
//import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils.dart';

class NosotrosScreen extends StatefulWidget {
  static const routName = './nosotros';

  const NosotrosScreen({super.key});

  @override
  _NosotrosScreenState createState() => _NosotrosScreenState();
}

class _NosotrosScreenState extends State<NosotrosScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late final List<String> _imagePaths;

  @override
  void initState() {
    super.initState();

    // Lista de imágenes
    _imagePaths = [
      'images/carousel/chachapoyastravel.jpg',
      'images/carousel/oficetravel.jpg',
      'images/carousel/agenciatravel.jpg',
      'images/carousel/avionytravel.jpg',
      'images/carousel/travelpeople.jpg',
    ];

    // Reproducción automática: cambia de página cada 3 segundos
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoPlay();
    });
  }

  Widget buildTitleText(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildBodyText(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void openWhatsApp(String phoneNumber) async {
    String whatsappUrl = "https://wa.me/$phoneNumber";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw "Could not launch $whatsappUrl";
    }
  }

  void launchFacebook() async {
    const url = 'https://www.facebook.com/munichachapoyas';
    if (await canLaunch((url))) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  void _startAutoPlay() {
    Future.delayed(const Duration(seconds: 3), () {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % _imagePaths.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 600),
          curve: Curves.fastOutSlowIn,
        );
        setState(() {
          _currentPage = nextPage;
        });
        _startAutoPlay();
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context, 'Nosotros')),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _imagePaths.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(_imagePaths[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              t(context, 'Contacto'),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildBodyText(t(context, 'jr. 2 de mayo #123, Chachapoyas')),
                buildBodyText(t(context, '917712438')),
                buildBodyText(t(context, 'travelAma@gmail.com')),
              ],
            ),
          ),
          buildTitleText(t(context, 'Redes Sociales')),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      openWhatsApp("51941978382");
                      //whatsAppOpen();
                      print('Whatsapp pressed');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.green[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        t(context, 'Whatsapp'),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      launchFacebook();
                      print('Facebook pressed');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Facebook',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          buildTitleText(t(context, 'Ubicación')),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(MapScreen.routeName);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: AssetImage('images/localizacionchachapoyas.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 150, // Establecer la altura deseada
              width: double.infinity, // Ancho completo
            ),
          ),
        ],
      ),
    );
  }
}
