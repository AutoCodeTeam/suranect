import 'package:flutter/material.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/app_text_field.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class NopScreen extends StatefulWidget {
  const NopScreen({super.key});

  @override
  State<NopScreen> createState() => _NopScreenState();
}

class _NopScreenState extends State<NopScreen> {
  String nop = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: PAGES.nop.screenTitle),
      body: BaseBodyPage(
        children: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NOP",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 10),
                  AppTextField(
                    hintText: "NOP",
                    onChanged: (value) {
                      nop = value;
                    },
                  ),
                  const SizedBox(height: 5),
                  Text("Contoh: 12.34.567.891.234-5678.9", style: Theme.of(context).textTheme.bodyLarge),
                  const Spacer(),
                  AppButton(
                    onPressed: () {
                      AppRouter.router.push(PAGES.pbb.screenPath, extra: {
                        "nop": nop,
                      });
                    },
                    text: "Cek Pajak",
                    width: MediaQuery.of(context).size.width,
                    colorText: AppColors.white,
                    buttonColor: AppColors.black,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
