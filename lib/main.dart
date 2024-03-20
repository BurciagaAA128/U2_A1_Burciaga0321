import 'package:flutter/material.dart';
import 'package:burciaga0321/pantallas0321/panel0321/panel_pantalla0321.dart';

void main() => runApp(const MiAppPockets0321());

class MiAppPockets0321 extends StatelessWidget {
  const MiAppPockets0321({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pockets Burciaga 0321",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const PanelPantalla0321(),
    );
  }
}
