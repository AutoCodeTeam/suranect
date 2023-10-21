import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/features/auth/presentation/controller/verify_otp/verify_otp_cubit.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  void initState() {
    super.initState();
    context.read<VerifyOtpCubit>().getCode();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: AppColors.black),
      ),
    );

    return BlocListener<VerifyOtpCubit, VerifyOtpState>(
      listener: (context, state) {
        if(state.verifyOtpStatus == VerifyOtpStatus.success){
          AppRouter.router.go(PAGES.home.screenPath);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(PAGES.verifyOTP.screenTitle),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      "Masukan Kode Verifikasi",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 20),
                    Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Directionality(
                            // Specify direction if desired
                            textDirection: TextDirection.ltr,
                            child: Pinput(
                              androidSmsAutofillMethod:
                                  AndroidSmsAutofillMethod.smsUserConsentApi,
                              listenForMultipleSmsOnAndroid: true,
                              defaultPinTheme: defaultPinTheme,
                              separatorBuilder: (index) =>
                                  const SizedBox(width: 8),
                              validator: (value) {
                                return null;
                              },
                              hapticFeedbackType:
                                  HapticFeedbackType.lightImpact,
                              onCompleted: (pin) {
                                debugPrint('onCompleted: $pin');
                                context
                                    .read<VerifyOtpCubit>()
                                    .otpChanged(int.parse(pin));
                              },
                              onChanged: (pin) {
                                debugPrint('onChanged: $pin');
                                if (pin.isEmpty) {
                                  context.read<VerifyOtpCubit>().otpChanged(0);
                                } else {
                                  context
                                      .read<VerifyOtpCubit>()
                                      .otpChanged(int.parse(pin));
                                }
                              },
                              cursor: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 9),
                                    width: 22,
                                    height: 1,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              focusedPinTheme: defaultPinTheme.copyWith(
                                decoration:
                                    defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: AppColors.black),
                                ),
                              ),
                              submittedPinTheme: defaultPinTheme.copyWith(
                                decoration:
                                    defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(19),
                                  border: Border.all(color: AppColors.black),
                                ),
                              ),
                              errorPinTheme: defaultPinTheme.copyBorderWith(
                                border: Border.all(color: Colors.redAccent),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
                            buildWhen: (previous, current) =>
                                previous.sendAgain != current.sendAgain,
                            builder: (context, state) {
                              return RichText(
                                text: TextSpan(
                                  text: "Tidak menerima kode? ",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                  children: [
                                    WidgetSpan(
                                      child: state.sendAgain.inSeconds == 0
                                          ? InkWell(
                                              onTap: () {
                                                context
                                                    .read<VerifyOtpCubit>()
                                                    .getCode();
                                              },
                                              child: Text(
                                                'Kirim Ulang',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineSmall!
                                                    .copyWith(
                                                      color: AppColors.blue_60,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            )
                                          : Text(
                                              '${state.sendAgain.inSeconds}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall!
                                                  .copyWith(
                                                    color: AppColors.neutral_60,
                                                  ),
                                            ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 5),
                          BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
                            buildWhen: (previous, current) =>
                                previous.error != current.error,
                            builder: (context, state) {
                              return Text(
                                state.error,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: AppColors.error_60,
                                    ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
                      buildWhen: (previous, current) =>
                          previous.otp != current.otp,
                      builder: (context, state) {
                        return AppButton(
                          onPressed: state.otp.toString().length == 4
                              ? () async {
                                  context.read<VerifyOtpCubit>().verifCode();
                                }
                              : () {
                                  var snackBar = const SnackBar(
                                    content:
                                        Text("Mohon isi kode terlebih dahulu!"),
                                    backgroundColor: AppColors.error_60,
                                    duration: Duration(seconds: 1),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                          text: "Verifikasi Kode",
                          width: MediaQuery.of(context).size.width,
                          colorText: AppColors.white,
                          buttonColor: state.otp.toString().length == 4
                              ? AppColors.black
                              : AppColors.neutral_60,
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
