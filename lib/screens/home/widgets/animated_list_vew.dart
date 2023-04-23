import 'package:flutter/material.dart';
import 'package:login_animated/screens/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({super.key, required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso da Cod3r',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso da Cod3r',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
