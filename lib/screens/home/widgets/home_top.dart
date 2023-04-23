import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  const HomeTop({super.key, required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Bem vindo, Tony',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120.0,
              height: containerGrow.value * 120.0,
              // margin: const EdgeInsets.only(top: 70.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/perfil.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: containerGrow.value > 0.7
                  ? Container(
                      width: containerGrow.value * 42.0,
                      height: containerGrow.value * 42.0,
                      // margin: const EdgeInsets.only(left: 80.0),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(80, 210, 194, 0.7),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: containerGrow.value * 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
