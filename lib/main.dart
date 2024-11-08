import 'package:flutter/material.dart';
import './screens/unity_screen.dart.dart'; // Importa el archivo donde está definida la pantalla de Unity

void main() {
  runApp(const MyApp()); // Inicializa la aplicación
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Unity Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Unity Demo Home Page'), // Establece la pantalla principal
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // Título de la página principal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title), // Muestra el título de la pantalla en la barra de navegación
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Al presionar el botón, navega a la pantalla de Unity
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UnityScreen(sceneName: "SampleScene"),
              ),
            );
          },
          child: const Text('Abrir Unity'), // Texto del botón
        ),
      ),
    );
  }
}