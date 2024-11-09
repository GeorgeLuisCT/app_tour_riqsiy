import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_viajes_screen.dart';
import './screens/travel_detail_screen.dart';
import './screens/nosotros_screen.dart';
import './screens/promociones_screen.dart';
import './screens/map_screen.dart';
import 'package:flutter/services.dart';

//importasion para idioma
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //configuracion del paquete i18n
  final FlutterI18nDelegate flutterI18nDelegate = FlutterI18nDelegate(
    translationLoader: FileTranslationLoader(
      basePath: 'assets/flutter_i18n',
      fallbackFile: 'es',
      useCountryCode: false,
    ),
    missingTranslationHandler: (key, locale) {
      print("--- MISSING KEY: $key, languageCode: ${locale?.languageCode}");
    },
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agencia de viajes',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        hintColor: Colors.blue,
        canvasColor: const Color.fromRGBO(230, 255, 252, 1),
        fontFamily: 'Raleway',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(21, 51, 51, 1),
              ),
              titleLarge: const TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      //idioma
      localizationsDelegates: [
        flutterI18nDelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      //Rutas de la aplicacion
      initialRoute: './home-screen',
      routes: {
        HomePageScreen.routName: (ctx) => const HomePageScreen(),
        CategoriesScreen.routName: (ctx) => const CategoriesScreen(),
        CategoryViajesScreen.routName: (ctx) => const CategoryViajesScreen(),
        TravelDetailScreen.routeName: (ctx) => const TravelDetailScreen(),
        NosotrosScreen.routName: (ctx) => const NosotrosScreen(),
        PromocionesScreen.routeName: (ctx) => const PromocionesScreen(),
        MapScreen.routeName: (ctx) => const MapScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => const HomePageScreen(),
        );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const HomePageScreen(),
        );
      },
    );
  }
}
