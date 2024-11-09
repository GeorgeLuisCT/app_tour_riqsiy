import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../category_item.dart';
import '../main_drawer.dart';

import 'package:flutter_i18n/flutter_i18n.dart';
import '../utils.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CategoriesScreen extends StatelessWidget {
  static const routName = './categories-screen';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Agrega esta línea para obtener el Locale actual
    final locale = Localizations.localeOf(context);

    return Scaffold(
      key: ValueKey(locale.languageCode), // Ahora 'locale' está definido
      appBar: AppBar(
        title: Text(t(context, 'Categorias')),
      ),
      drawer: const MainDrawer(),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                t(context, catData.title),
                catData.catImage,
              ),
            )
            .toList(),
      ),
    );
  }
}
