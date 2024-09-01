import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/app_text_field.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/laporan/domain/entities/text_field_formz.dart';
import 'package:suranect/features/laporan/presentation/controller/lapor_cubit.dart';
import 'package:suranect/features/laporan/presentation/widgets/laporan_categories.dart';

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

  final TextEditingController categoryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<LaporCubit>().imageChanged(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LaporCubit, LaporState>(
      listener: (context, state) {
        if (state.formStatus.isSuccess) {
          AppRouter.router.pop();
        }
      },
      child: Scaffold(
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
                          error: state.location.error?.message,
                          status: state.location.isValid,
                          onChanged: (value) {
                            context.read<LaporCubit>().locationChanged(value);
                          },
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
                        AppTextField(
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Deskripsi Lokasi",
                          maxLines: null,
                          onChanged: (value) {
                            context.read<LaporCubit>().specificChanged(value);
                          },
                        ),
                        const SizedBox(height: 10),
                        Text("Permasalahan",
                            style: Theme.of(context).textTheme.headlineMedium),
                        const SizedBox(height: 10),
                        AppTextField(
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Permasalahan",
                          maxLines: null,
                          error: state.description.error?.message,
                          status: state.description.isValid,
                          onChanged: (value) {
                            context
                                .read<LaporCubit>()
                                .descriptionChanged(value);
                          },
                        ),
                        const SizedBox(height: 10),
                        Text("Kategori",
                            style: Theme.of(context).textTheme.headlineMedium),
                        const SizedBox(height: 10),
                        AppTextField(
                          contentPadding: const EdgeInsets.all(20),
                          hintText: "Kategori",
                          maxLines: 1,
                          readOnly: true,
                          error: state.category.error?.message,
                          status: state.category.isValid,
                          textEditingController: categoryController,
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (contextBottomSheet) {
                                return BlocProvider.value(
                                  value: BlocProvider.of<LaporCubit>(context),
                                  child: DraggableScrollableSheet(
                                      expand: false,
                                      initialChildSize: 0.8,
                                      minChildSize: 0.4,
                                      maxChildSize: 0.8,
                                      builder:
                                          (contextDraggable, scrollController) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: CustomScrollView(
                                            controller: scrollController,
                                            slivers: [
                                              SliverList.separated(
                                                itemBuilder: (context, index) =>
                                                    Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 20.0,
                                                    top: index == 0 ? 20 : 0,
                                                    right: 20,
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      AppRouter.router.pop(
                                                          LaporanCategories[index]);
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                            child: Text(
                                                          LaporanCategories[index],
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineMedium,
                                                        )),
                                                        const Icon(
                                                            Icons.chevron_right)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                separatorBuilder: (context,
                                                        index) =>
                                                    const SizedBox(height: 20),
                                                itemCount: LaporanCategories.length,
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                );
                              },
                            ).then((value) {
                              context.read<LaporCubit>().categoryChanged(value);

                              categoryController.text = value;
                            });
                          },
                        ),
                        const SizedBox(height: 10),
                        const Spacer(),
                        state.formStatus.isInProgress
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : const SizedBox.shrink(),
                        const SizedBox(height: 10),
                        AppButton(
                          onPressed: () {
                            context.read<LaporCubit>().submit();
                          },
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
      ),
    );
  }
}
