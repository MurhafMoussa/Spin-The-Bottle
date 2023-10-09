import 'package:flutter/material.dart';
import 'package:spin_the_bottle/resources/assets_manager.dart';
import 'package:spin_the_bottle/widgets/bottle.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AssetsManager.floor,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.cover,
          ),
          const Bottle()
        ],
      ),
    );
  }
}
