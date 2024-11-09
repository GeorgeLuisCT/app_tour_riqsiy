import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart'; // Importa el paquete para usar Unity en Flutter
// Pantalla que muestra el widget de Unity
class UnityScreen extends StatefulWidget {
  final String sceneName; // Nombre de la escena que se desea cargar
  const UnityScreen({super.key, required this.sceneName});
  @override
  State<UnityScreen> createState() => _UnityScreenState();
}
class _UnityScreenState extends State<UnityScreen> {
  UnityWidgetController? _unityWidgetController; // Controlador para manejar Unity desde Flutter
  // Método que se llama cuando Unity ha sido inicializado
  void onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller; // Asigna el controlador al inicializar Unity
    loadScene(widget.sceneName); // Cargar la escena especificada en cuanto Unity esté listo
  }
  // Método para cargar una escena específica en Unity
  void loadScene(String sceneName) {
    if (_unityWidgetController != null) {
      _unityWidgetController?.postMessage(
        'UnityController', // Reemplázalo con el nombre de tu GameObject que escucha el mensaje en Unity
        'LoadScene', // Método en Unity que se encarga de cargar la escena
        sceneName, // Nombre de la escena que se desea cargar
      );
    } else {
      print("Unity Widget Controller is not initialized.");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unity Screen"), // Título de la pantalla de Unity
      ),
      // El widget principal de Unity que muestra la escena
      body: UnityWidget(
        onUnityCreated: onUnityCreated, // Callback cuando Unity está listo
        useAndroidViewSurface: true, // Mejora de rendimiento para Android 10+
      ),
    );
  }
}