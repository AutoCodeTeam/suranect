import 'package:flutter/material.dart';
import 'package:suranect/core/routes/app_router.dart';
import 'package:suranect/core/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/auth_textfield.dart';

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
        title: Text(PAGES.login.screenTitle),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text("Hallo! \nSelamat Datang di Suranect.",
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 30),
            AuthTextField(
              icon: "assets/svg/face_ic.svg",
              label: 'Username',
              onChanged: (value) {},
            ),
            const SizedBox(height: 14),
             AuthTextField(
              icon: "assets/svg/key_ic.svg",
              label: 'Password',
               obscureText: true,
               isPassword: true,
               onChanged: (value) {},
             ),
            const Spacer(),
            AppButton(
              onPressed: () {
                AppRouter.router.go(PAGES.home.screenPath);
              },
              text: "Masuk",
              width: MediaQuery.of(context).size.width,
              buttonColor: AppColors.blue_60,
              colorText: AppColors.white,
            ),
            const SizedBox(height: 10),
            AppButton(
              onPressed: () {
                AppRouter.router.push(PAGES.register.screenPath);
              },
              text: "Tidak punya akun? Daftar dulu",
              width: MediaQuery.of(context).size.width,
              buttonColor: AppColors.blue_10,
            ),
          ],
        ),
      ),
    );
  }
}
