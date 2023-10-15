import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/login/presentation/widgets/form_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masuk"),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hai! Hai!", style: Theme.of(context).textTheme.displayLarge
            ),
            Text(
              "Selamat Datang di Suranect.",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 30),
            const FormContainer(
              icon: "assets/svg/face_ic.svg",
              label: 'Username',
            ),
            const SizedBox(height: 14),
            const FormContainer(
              icon: "assets/svg/key_ic.svg",
              label: 'Password',
            ),
          ],
        ),
      ),
    );
  }
}
