import 'package:flutter/material.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/upper_case_formatter.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class PlatScreen extends StatefulWidget {
  const PlatScreen({super.key});

  @override
  State<PlatScreen> createState() => _PlatScreenState();
}

class _PlatScreenState extends State<PlatScreen> {
  String firstValue = "";
  String secondValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: PAGES.plat.screenTitle,
      ),
      body: BaseBodyPage(
        children: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pajak Kendaraan Bermotor",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Masukkan plat kendaraan anda",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          AppShadow.sShadow,
                        ]),
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.neutral_100,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "L",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                  inputFormatters: [UpperCaseTextFormatter()],
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  counterText: "",
                                ),
                                maxLength: 4,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w500,
                                    ),
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  firstValue = value;
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                inputFormatters: [UpperCaseTextFormatter()],
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  counterText: "",
                                ),
                                maxLength: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w500,
                                    ),
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  secondValue = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("Contoh: L 1234 AAE", style: Theme.of(context).textTheme.bodyLarge),
                  const Spacer(),
                  AppButton(
                    onPressed: () {
                      AppRouter.router.push(PAGES.pajakKendaraan.screenPath,
                          extra: {"plat": "L $firstValue $secondValue".toUpperCase()});
                    },
                    text: "Cek Pajak",
                    width: MediaQuery.of(context).size.width,
                    colorText: AppColors.white,
                    buttonColor: AppColors.black,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
