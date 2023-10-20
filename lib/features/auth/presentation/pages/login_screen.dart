import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/auth_textfield.dart';
import 'package:suranect/features/auth/domain/entities/password.dart';
import 'package:suranect/features/auth/domain/entities/username.dart';
import 'package:suranect/features/auth/presentation/controller/login/login_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/profile/profile_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().refresh();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.formStatus.isSuccess) {
          var snackBar = const SnackBar(
            content: Text("Success!"),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          context.read<ProfileBloc>().add(const ProfileEvent.loggedIn());
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(PAGES.login.screenTitle),
          ),
          backgroundColor: AppColors.white,
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
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
                        error: state.name.error?.message,
                        formzSubmissionStatus: state.formStatus,
                        onChanged: (value) {
                          context.read<LoginCubit>().usernameChanged(value);
                        },
                      ),
                      const SizedBox(height: 14),
                      BlocBuilder<LoginCubit, LoginState>(
                        buildWhen: (previous, current) =>
                            previous.showPassword != current.showPassword ||
                            previous.formStatus != current.formStatus ||
                            previous.password != current.password,
                        builder: (context, state) {
                          return AuthTextField(
                            icon: "assets/svg/key_ic.svg",
                            label: 'Password',
                            obscureText: state.showPassword,
                            error: state.password.error?.message,
                            formzSubmissionStatus: state.formStatus,
                            isPassword: true,
                            showPassword: () {
                              context.read<LoginCubit>().showPassword();
                            },
                            onChanged: (value) {
                              context.read<LoginCubit>().passwordChanged(value);
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      state.exceptionError == ""
                          ? const SizedBox.shrink()
                          : Text(
                              state.exceptionError,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.red),
                            ),
                      const Spacer(),
                      AppButton(
                        onPressed: () async {
                          context.read<LoginCubit>().loginWithCredentials();
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
              )
            ],
          ),
        );
      },
    );
  }
}
