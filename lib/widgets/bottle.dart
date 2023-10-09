import 'package:flutter/material.dart';
import 'package:spin_the_bottle/resources/assets_manager.dart';

class Bottle extends StatefulWidget {
  const Bottle({
    super.key,
  });

  @override
  State<Bottle> createState() => _BottleState();
}

class _BottleState extends State<Bottle> {
  double _angle = 0.0;
  double _oldAngle = 0.0;
  double _angleDelta = 0.0;
  double velocity = 0;

  @override
  Widget build(BuildContext context) {
    final bottleWidth = MediaQuery.sizeOf(context).width / 5;

    return GestureDetector(
      onPanStart: (details) {
        final touchPositionFromCenter = details.localPosition;
        _angleDelta = _oldAngle - touchPositionFromCenter.direction;
      },
      onPanEnd: (details) {
        setState(
          () {
            _oldAngle = _angle;
            velocity = _angle;
          },
        );
      },
      onPanUpdate: (details) {
        final touchPositionFromCenter = details.localPosition;

        setState(
          () {
            _angle = touchPositionFromCenter.direction + _angleDelta;
          },
        );
      },
      child: AnimatedRotation(
        alignment: Alignment.center,
        turns: velocity,
        duration: const Duration(seconds: 2),
        child: Image.asset(
          AssetsManager.bottle,
          width: bottleWidth,
          height: bottleWidth,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
