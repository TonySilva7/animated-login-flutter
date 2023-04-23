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
          title: 'Atividade 01',
          subtitle: 'Realizar a atividade 01',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: 'Atividade 02',
          subtitle: 'Realizar a atividade 02',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Atividade 03',
          subtitle: 'Realizar a atividade 03',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Atividade 04',
          subtitle: 'Realizar a atividade 04',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Atividade 05',
          subtitle: 'Realizar a atividade 05',
          image: const AssetImage('assets/images/perfil.jpeg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
