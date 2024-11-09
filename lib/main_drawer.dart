import 'package:flutter/material.dart';
import 'package:app_tour_riqsiy/screens/nosotros_screen.dart';
import 'package:app_tour_riqsiy/screens/promociones_screen.dart';
import './screens/home_screen.dart';
import './screens/categories_screen.dart';

import 'package:flutter_i18n/flutter_i18n.dart';
import 'utils.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(BuildContext context, String title, IconData icon,
      VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        t(context, title),
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            alignment: Alignment.centerLeft,
            color: Colors.grey,
            child: Text(
              t(context, 'Menu'),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile(context, 'Inicio', Icons.home, () {
            Navigator.of(context).pushNamed(HomePageScreen.routName);
          }),
          buildListTile(context, 'Categorias', Icons.category, () {
            Navigator.of(context).pushNamed(CategoriesScreen.routName);
          }),
          buildListTile(context, 'Nosotros', Icons.face, () {
            Navigator.of(context).pushNamed(NosotrosScreen.routName);
          }),
          buildListTile(context, 'Promociones', Icons.shopping_bag, () {
            Navigator.of(context).pushNamed(PromocionesScreen.routeName);
          }),
          //opcion de idioma
          buildListTile(context, 'Idioma', Icons.language, () {
            _showLanguageDialog(context);
          }),
        ],
      ),
    );
  }

  //metodo para mostrar el dialogo de seleccion de idioma
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(t(context, 'Seleccionar Idioma')),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  title: Text(t(context, 'Español')),
                  onTap: () {
                    FlutterI18n.refresh(context, const Locale('es', ''));
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushReplacementNamed(CategoriesScreen.routName);
                  },
                ),
                ListTile(
                  title: Text(t(context, 'English')),
                  onTap: () {
                    FlutterI18n.refresh(context, const Locale('en', ''));
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushReplacementNamed(CategoriesScreen.routName);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
