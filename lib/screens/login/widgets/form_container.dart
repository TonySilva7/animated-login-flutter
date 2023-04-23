import 'package:flutter/material.dart';
import 'package:login_animated/screens/login/widgets/input_field.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: const [
            InputField(hint: 'Username', obscure: false, icon: Icons.person_outlined),
            InputField(hint: 'Password', obscure: true, icon: Icons.lock_outline),
          ],
        ),
      ),
    );
  }
}
