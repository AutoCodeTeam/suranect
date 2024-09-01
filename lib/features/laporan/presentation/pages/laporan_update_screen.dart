import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/app_text_field.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/domain/entities/text_field_formz.dart';
import 'package:suranect/features/laporan/domain/entities/text_field_formz.dart';
import 'package:suranect/features/laporan/presentation/controller/laporan_bloc.dart';
import 'package:suranect/features/laporan/presentation/controller/laporan_update_cubit.dart';
import 'package:suranect/features/laporan/presentation/widgets/laporan_categories.dart';

class LaporanUpdateScreen extends StatefulWidget {
  final int id;

  const LaporanUpdateScreen({super.key, required this.id});

  @override
  State<LaporanUpdateScreen> createState() => _LaporanUpdateScreenState();
}

class _LaporanUpdateScreenState extends State<LaporanUpdateScreen> {
  final TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LaporanUpdateCubit, LaporanUpdateState>(
      listener: (context, state) {
        if (state.formStatus.isSuccess && state.exceptionError.isEmpty) {
          var snackBar = const SnackBar(
            content: Text("Edit Success!"),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          AppRouter.router.pop();
        }
      },
      child: BlocConsumer<LaporanBloc, LaporanState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            detail: (value) {
              context.read<LaporanUpdateCubit>().initial(
                    value.laporan.lokasi,
                    value.laporan.kategori,
                    value.laporan.lokasiSpesifik,
                    value.laporan.permasalahan,
                  );
            },
          );
        },
        builder: (contextLaporanBloc, state) {
          return state.maybeMap(
            orElse: () => const Scaffold(
              appBar: BaseAppBar(
                title: "",
              ),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            detail: (value) {
              categoryController.text = value.laporan.kategori;
              return Scaffold(
                appBar: const BaseAppBar(title: ""),
                body: BaseBodyPage(
                  children: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocBuilder<LaporanUpdateCubit, LaporanUpdateState>(
                              buildWhen: (previous, current) =>
                                  previous.image != current.image,
                              builder: (context, state) {
                                late ImageProvider imageProvider;

                                if (state.image == null) {
                                  imageProvider = CachedNetworkImageProvider(
                                      value.laporan.photo);
                                } else {
                                  imageProvider =
                                      FileImage(File(state.image!.path));
                                }

                                return Stack(
                                  alignment: Alignment.bottomRight,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -5,
                                      right: -5,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: AppColors.info_40,
                                          shape: BoxShape.circle,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: InkWell(
                                          onTap: () {
                                            showDialog<void>(
                                              context: context,
                                              builder:
                                                  (BuildContext contextDialog) {
                                                return BlocProvider.value(
                                                  value: BlocProvider.of<
                                                          LaporanUpdateCubit>(
                                                      context),
                                                  child: AlertDialog(
                                                    title: const Text(
                                                      'Ambil gambar dengan?',
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        child: Text(
                                                          'Gallery',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!,
                                                        ),
                                                        onPressed: () async {
                                                          XFile? resultPicture =
                                                              await ImagePicker()
                                                                  .pickImage(
                                                                      source: ImageSource
                                                                          .gallery);
                                                          if (resultPicture ==
                                                              null) {
                                                            return;
                                                          }

                                                          if (mounted) {
                                                            context
                                                                .read<
                                                                    LaporanUpdateCubit>()
                                                                .imageChanged(
                                                                    resultPicture);
                                                            Navigator.of(
                                                                    context)
                                                                .pop(
                                                                    resultPicture);
                                                          }
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: SvgPicture.asset(
                                            "assets/svg/edit_ic.svg",
                                            height: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(height: 10),
                            Text("Lokasi",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 10),
                            BlocBuilder<LaporanUpdateCubit, LaporanUpdateState>(
                              buildWhen: (previous, current) =>
                                  previous.location != current.location,
                              builder: (context, state) {
                                return AppTextField(
                                  contentPadding: const EdgeInsets.all(10),
                                  prefixIcon: SvgPicture.asset(
                                    "assets/svg/location_ic.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                  hintText: "Lokasi Foto",
                                  status: state.isValid,
                                  error: state.location.error?.message,
                                  onChanged: (value) {
                                    context
                                        .read<LaporanUpdateCubit>()
                                        .locationChanged(value);
                                  },
                                  initialValue: state.location.value,
                                );
                              },
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Ciri Khusus Lokasi ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                                children: [
                                  TextSpan(
                                      text: "(Opsional)",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge)
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            BlocBuilder<LaporanUpdateCubit, LaporanUpdateState>(
                              buildWhen: (previous, current) =>
                                  previous.specific != current.specific,
                              builder: (context, state) {
                                return AppTextField(
                                  contentPadding: const EdgeInsets.all(20),
                                  hintText: "Deskripsi Lokasi",
                                  maxLines: null,
                                  initialValue: state.specific,
                                  onChanged: (value) {
                                    context
                                        .read<LaporanUpdateCubit>()
                                        .specificChanged(value);
                                  },
                                );
                              },
                            ),
                            const SizedBox(height: 10),
                            Text("Permasalahan",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 10),
                            BlocBuilder<LaporanUpdateCubit, LaporanUpdateState>(
                              buildWhen: (previous, current) =>
                                  previous.description != current.description,
                              builder: (context, state) {
                                return AppTextField(
                                  contentPadding: const EdgeInsets.all(20),
                                  hintText: "Permasalahan",
                                  maxLines: null,
                                  status: state.isValid,
                                  error: state.description.error?.message,
                                  onChanged: (value) {
                                    context
                                        .read<LaporanUpdateCubit>()
                                        .descriptionChanged(value);
                                  },
                                  initialValue: state.description.value,
                                );
                              },
                            ),
                            const SizedBox(height: 10),
                            Text("Kategori",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 10),
                            AppTextField(
                              contentPadding: const EdgeInsets.all(20),
                              hintText: "Kategori",
                              maxLines: 1,
                              readOnly: true,
                              textEditingController: categoryController,
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (contextBottomSheet) {
                                    return BlocProvider.value(
                                      value:
                                          BlocProvider.of<LaporanUpdateCubit>(
                                              context),
                                      child: DraggableScrollableSheet(
                                          expand: false,
                                          initialChildSize: 0.8,
                                          minChildSize: 0.4,
                                          maxChildSize: 0.8,
                                          builder: (contextDraggable,
                                              scrollController) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                              ),
                                              child: CustomScrollView(
                                                controller: scrollController,
                                                slivers: [
                                                  SliverList.separated(
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 20.0,
                                                        top:
                                                            index == 0 ? 20 : 0,
                                                        right: 20,
                                                      ),
                                                      child: InkWell(
                                                        onTap: () {
                                                          AppRouter.router.pop(
                                                              LaporanCategories[
                                                                  index]);
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
                                                              LaporanCategories[
                                                                  index],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headlineMedium,
                                                            )),
                                                            const Icon(Icons
                                                                .chevron_right)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    separatorBuilder:
                                                        (context, index) =>
                                                            const SizedBox(
                                                                height: 20),
                                                    itemCount: LaporanCategories
                                                        .length,
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                    );
                                  },
                                ).then((value) {
                                  context
                                      .read<LaporanUpdateCubit>()
                                      .categoryChanged(value);

                                  categoryController.text = value;
                                });
                              },
                            ),
                            BlocBuilder<LaporanUpdateCubit, LaporanUpdateState>(
                              buildWhen: (previous, current) =>
                                  previous.formStatus != current.formStatus,
                              builder: (context, state) => state.formStatus ==
                                      FormzSubmissionStatus.inProgress
                                  ? const Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : const SizedBox.shrink(),
                            ),
                            const SizedBox(height: 10),
                            const Spacer(),
                            AppButton(
                              onPressed: () {
                                context
                                    .read<LaporanUpdateCubit>()
                                    .submit(id: value.laporan.id);
                              },
                              text: "Update",
                              width: MediaQuery.of(context).size.width,
                              buttonColor: AppColors.info_60,
                              colorText: AppColors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
