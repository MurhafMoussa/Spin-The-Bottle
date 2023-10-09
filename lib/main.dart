import 'package:flutter/material.dart';
import 'package:spin_the_bottle/pages/main_page.dart';

void main() {
  runApp(const SpinTheBottle());
}

class SpinTheBottle extends StatelessWidget {
  const SpinTheBottle({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spin the bottle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
