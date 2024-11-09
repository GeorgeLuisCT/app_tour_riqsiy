import 'package:flutter/material.dart';
import 'package:app_tour_riqsiy/travel_item.dart';
import '../dummy_data.dart';
import '../utils.dart';

class CategoryViajesScreen extends StatelessWidget {
  static const routName = './category-viajes-screen';

  const CategoryViajesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routArgs['title'];
    final categoryId = routArgs['id'];
    final categoryTravels = DUMMY_TRAVELS.where((travel) {
      return travel.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(t(context, categoryTitle!)),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TravelItem(
              id: categoryTravels[index].id,
              categories: categoryTravels[index].categories,
              title: categoryTravels[index].title,
              priceTable: categoryTravels[index].priceTable,
              accesibilidad: categoryTravels[index].accesibilidad,
              descripcion: categoryTravels[index].descripcion,
              planes: categoryTravels[index].planes,
              imageCarousel: categoryTravels[index].imageCarousel,
            );
          },
          itemCount: categoryTravels.length,
        ));
  }
}
