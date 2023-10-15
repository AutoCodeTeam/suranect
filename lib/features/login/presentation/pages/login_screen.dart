import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';

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
              "Hallo!",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "Selamat Datang Kembali.",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg/face_ic.svg"),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                          label: Text(
                            "Username",
                            style:
                                Theme.of(context).textTheme.headlineMedium!.copyWith(
                                      color: AppColors.neutral_40,
                                    ),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
