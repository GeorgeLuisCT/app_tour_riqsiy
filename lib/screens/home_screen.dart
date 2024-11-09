import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../utils.dart';

class HomePageScreen extends StatefulWidget {
  static const routName = './home-screen';

  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  //ruta para irnos a la categoria
  selectCategories(BuildContext context) {
    Navigator.of(context).pushNamed(CategoriesScreen.routName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  final background = Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/promo/home1.jpg'), fit: BoxFit.cover),
    ),
  );
  final whiteOpacity = Container(
    color: Colors.white24,
  );
  Widget button(String label, VoidCallback onTap) {
    return Material(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white24,
        highlightColor: Colors.white10,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Center(
            child: Text(
              t(context, label),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final logo = ScaleTransition(
      scale: animation,
      child: Image.asset(
        'images/remame1.png',
        width: 200,
        height: 200,
      ),
    );

    final description = Text(
      t(context, 'Descubre Amazonas\n con Riqsiy\n el apoyo que necesitabas'),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontStyle: FontStyle.italic,
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background,
          whiteOpacity,
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  logo,
                  const SizedBox(
                    height: 30,
                  ),
                  description,
                  const SizedBox(
                    height: 400,
                  ),
                  button(t(context, 'Inicio'), () => selectCategories(context))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
