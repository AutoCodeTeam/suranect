import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/app_text_field.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/add_laporan/presentation/controller/lapor_cubit.dart';
import 'package:suranect/features/add_laporan/presentation/widgets/category_bottom_sheet.dart';

class ReviewLaporanScreen extends StatefulWidget {
  final XFile image;

  const ReviewLaporanScreen({
    super.key,
    required this.image,
  });

  @override
  State<ReviewLaporanScreen> createState() => _ReviewLaporanScreenState();
}

class _ReviewLaporanScreenState extends State<ReviewLaporanScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LaporCubit>().imageChanged(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: "Tinjau Laporan"),
      body: BlocBuilder<LaporCubit, LaporState>(
        builder: (context, state) {
          return BaseBodyPage(
            children: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: FileImage(File(state.image!.path)),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text("Lokasi",
                          style: Theme.of(context).textTheme.headlineMedium),
                      const SizedBox(height: 10),
                      AppTextField(
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: SvgPicture.asset(
                          "assets/svg/location_ic.svg",
                          fit: BoxFit.scaleDown,
                        ),
                        hintText: "Lokasi Foto",
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: "Ciri Khusus Lokasi ",
                          style: Theme.of(context).textTheme.headlineMedium,
                          children: [
                            TextSpan(
                                text: "(Opsional)",
                                style: Theme.of(context).textTheme.bodyLarge)
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const AppTextField(
                        contentPadding: EdgeInsets.all(20),
                        hintText: "Deskripsi Lokasi",
                        maxLines: null,
                        maxLength: 255,
                      ),
                      const SizedBox(height: 10),
                      Text("Permasalahan",
                          style: Theme.of(context).textTheme.headlineMedium),
                      const SizedBox(height: 10),
                      const AppTextField(
                        contentPadding: EdgeInsets.all(20),
                        hintText: "Permasalahan",
                        maxLines: null,
                        maxLength: 255,
                      ),
                      const SizedBox(height: 10),
                      Text("Kategori",
                          style: Theme.of(context).textTheme.headlineMedium),
                      const SizedBox(height: 10),
                      AppTextField(
                        contentPadding: EdgeInsets.all(20),
                        hintText: "Kategori",
                        maxLines: 1,
                        readOnly: true,
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            useSafeArea: true,
                            isScrollControlled: true,
                            builder: (context) => const CategoryBottomSheet(),
                          );
                        },
                      ),
                      const Spacer(),
                      AppButton(
                        onPressed: () {},
                        text: "Lapor",
                        width: MediaQuery.of(context).size.width,
                        buttonColor: AppColors.neutral_100,
                        colorText: AppColors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
