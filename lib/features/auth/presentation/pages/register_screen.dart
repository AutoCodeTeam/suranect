import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:suranect/core/routes/app_router.dart';
import 'package:suranect/core/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/auth_textfield.dart';
import 'package:suranect/features/auth/presentation/controller/register_cubit.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RegisterCubit>().refresh();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state.formStatus.isFailure) {
          var snackBar = SnackBar(
              content: Text(state.exceptionError), backgroundColor: Colors.red);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (state.formStatus.isSuccess) {
          var snackBar = const SnackBar(
              content: Text("Success!"), backgroundColor: Colors.green);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          AppRouter.router.go(PAGES.login.screenPath);
        }
      },
      builder:(context, state) => Scaffold(
        appBar: AppBar(
          title: Text(PAGES.register.screenTitle),
        ),
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text("Buat akun kamu.",
                  style: Theme.of(context).textTheme.displayLarge),
              Text(
                "Buat akunmu sehingga data kamu bisah disimpan secara aman dan tidak perlu khawatir kehilangan data apapun..",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              AuthTextField(
                icon: "assets/svg/face_ic.svg",
                label: 'Username',
                error: state.name.error?.name,
                onChanged: (value) {
                  context.read<RegisterCubit>().nameChanged(value);
                },
              ),
              const SizedBox(height: 14),
              AuthTextField(
                icon: "assets/svg/email_ic.svg",
                label: 'Email',
                error: state.email.error?.name,
                onChanged: (value) {
                  context.read<RegisterCubit>().emailChanged(value);
                },
              ),
              const SizedBox(height: 14),
              AuthTextField(
                icon: "assets/svg/key_ic.svg",
                label: 'Password',
                obscureText: true,
                isPassword: true,
                error: state.password.error?.name,
                onChanged: (value) {
                  context.read<RegisterCubit>().passwordChanged(value);
                },
              ),
              const SizedBox(height: 14),
              AuthTextField(
                icon: "assets/svg/key_ic.svg",
                label: 'Konfirmasi Password',
                obscureText: true,
                isPassword: true,
                error: state.rePassword.error?.name,
                onChanged: (value) {},
              ),
              const Spacer(),
              AppButton(
                onPressed: () {
                  context.read<RegisterCubit>().signUpWithCredentials();
                },
                text: "Daftar Akun",
                width: MediaQuery.of(context).size.width,
                buttonColor: AppColors.neutral_100,
                colorText: AppColors.white,
              ),
              const SizedBox(height: 10),
              BlocBuilder<RegisterCubit, RegisterState>(
                buildWhen: (previous, current) =>
                    previous.formStatus != current.formStatus,
                builder: (context, state) {
                  return state.formStatus == FormzSubmissionStatus.inProgress
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
