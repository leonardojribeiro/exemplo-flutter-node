import 'package:app/api_service.dart';
import 'package:app/modelos/usuario_modelo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UsuarioModelo> usuarios = [];

  Future<void> listarUsuarios() async {
    final usuariosResponse = await ApiService().get('usuario');
    if (usuariosResponse is List) {
      final usuariosDart = usuariosResponse.map((usuarioRaw) => UsuarioModelo.fromMap(usuarioRaw)).toList();
      setState(() {
        usuarios = usuariosDart;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final usuario = usuarios[index];
          return ListTile(
            title: Text(usuario.nome),
          );
        },
        itemCount: usuarios.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: listarUsuarios,
      ),
    );
  }
}
