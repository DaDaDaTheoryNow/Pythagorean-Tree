import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticles extends StatelessWidget {
  const CircularParticles({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularParticle(
      key: UniqueKey(),
      awayRadius: MediaQuery.of(context).size.width / 5,
      numberOfParticles: 150,
      speedOfParticles: 1.3,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      onTapAnimation: true,
      particleColor: Colors.white.withOpacity(.7),
      awayAnimationDuration: Duration(milliseconds: 600),
      maxParticleSize: 7,
      isRandSize: true,
      isRandomColor: false,
      awayAnimationCurve: Curves.easeInOutBack,
      enableHover: true,
      hoverColor: Colors.black,
      hoverRadius: 90,
      connectDots: true,
    );
  }
}
