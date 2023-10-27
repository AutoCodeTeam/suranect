import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/features/add_laporan/presentation/controller/lapor_cubit.dart';

class ReviewPhotoScreen extends StatelessWidget {
  final XFile image;

  const ReviewPhotoScreen({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: "Tinjau Foto"),
      body: Column(
        children: [
          Image.file(File(image.path)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      AppRouter.router.replace(PAGES.takePhoto.screenPath);
                    },
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(4),
                        backgroundColor:
                            const MaterialStatePropertyAll(AppColors.white),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 15))),
                    child: Text(
                      "Ulangi",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      AppRouter.router.replace(PAGES.reviewLaporan.screenPath, extra: image);
                    },
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(4),
                        backgroundColor:
                            const MaterialStatePropertyAll(AppColors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 15))),
                    child: Text(
                      "Selanjutnya",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
