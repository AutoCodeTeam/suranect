import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/auth_textfield.dart';
import 'package:suranect/features/auth/domain/entities/email.dart';
import 'package:suranect/features/auth/domain/entities/password.dart';
import 'package:suranect/features/auth/domain/entities/re_password.dart';
import 'package:suranect/features/auth/domain/entities/username.dart';
import 'package:suranect/features/auth/presentation/controller/register/register_cubit.dart';

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
        if (state.formStatus.isSuccess) {
          var snackBar = const SnackBar(
            content: Text("Success!"),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          AppRouter.router.go(PAGES.login.screenPath);
        }
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(PAGES.register.screenTitle),
        ),
        backgroundColor: AppColors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Buat akun kamu.",
                      style: Theme.of(context).textTheme.displayLarge),
                  Text(
                    "Buat akunmu sehingga data kamu bisah disimpan secara aman dan tidak perlu khawatir kehilangan data apapun..",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  state.exceptionError == ""
                      ? const SizedBox.shrink()
                      : Text(
                          state.exceptionError,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.red),
                        ),
                  const SizedBox(height: 10),
                  AuthTextField(
                    icon: "assets/svg/face_ic.svg",
                    label: 'Username',
                    error: state.name.error?.message,
                    formzSubmissionStatus: state.formStatus,
                    onChanged: (value) {
                      context.read<RegisterCubit>().nameChanged(value);
                    },
                  ),
                  const SizedBox(height: 14),
                  AuthTextField(
                    icon: "assets/svg/email_ic.svg",
                    label: 'Email',
                    error: state.email.error?.message,
                    formzSubmissionStatus: state.formStatus,
                    onChanged: (value) {
                      context.read<RegisterCubit>().emailChanged(value);
                    },
                  ),
                  const SizedBox(height: 14),
                  BlocBuilder<RegisterCubit, RegisterState>(
                    buildWhen: (previous, current) =>
                        previous.showPassword != current.showPassword ||
                        previous.formStatus != current.formStatus ||
                        previous.password != current.password,
                    builder: (context, state) {
                      return AuthTextField(
                        icon: "assets/svg/key_ic.svg",
                        label: 'Password',
                        obscureText: state.showPassword,
                        isPassword: true,
                        formzSubmissionStatus: state.formStatus,
                        showPassword: () {
                          context.read<RegisterCubit>().showPassword();
                        },
                        error: state.password.error?.message,
                        onChanged: (value) {
                          context.read<RegisterCubit>().passwordChanged(value);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 14),
                  BlocBuilder<RegisterCubit, RegisterState>(
                    buildWhen: (previous, current) =>
                        previous.showPassword != current.showPassword ||
                        previous.formStatus != current.formStatus ||
                        previous.rePassword != current.rePassword,
                    builder: (context, state) {
                      return AuthTextField(
                        icon: "assets/svg/key_ic.svg",
                        label: 'rePassword',
                        obscureText: state.showPassword,
                        isPassword: true,
                        formzSubmissionStatus: state.formStatus,
                        showPassword: () {
                          context.read<RegisterCubit>().showPassword();
                        },
                        error: state.rePassword.error?.message,
                        onChanged: (value) {
                          context
                              .read<RegisterCubit>()
                              .rePasswordChanged(value);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 14),
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
                      return state.formStatus ==
                              FormzSubmissionStatus.inProgress
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
        ),
      ),
    );
  }
}
