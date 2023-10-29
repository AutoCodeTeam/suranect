import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/features/add_laporan/presentation/controller/camera_bloc.dart';

class TakePhotoScreen extends StatefulWidget {
  const TakePhotoScreen({
    super.key,
  });

  @override
  State<TakePhotoScreen> createState() => _TakePhotoScreenState();
}

class _TakePhotoScreenState extends State<TakePhotoScreen>
    with WidgetsBindingObserver {
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraBloc, CameraState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          ready: (flashMode) {},
          failure: (error) {},
          inProgress: (progressValue) {},
          success: (image, pathMoreThanOnce) {
            AppRouter.router.replace(PAGES.reviewPhoto.screenPath, extra: image);
          },
          captureFailure: (error) {},
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          ready: (flashMode) {
            return Scaffold(
              appBar: BaseAppBar(title: "Ambil Foto Laporan"),
              body: Container(
                key: const Key('__errorCameraPreview__'),
                child: Column(
                  children: [
                    CameraPreview(
                      BlocProvider.of<CameraBloc>(context).getController(),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<CameraBloc>()
                                  .add(const CameraEvent.pickImage());
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                backgroundColor: AppColors.neutral_40,
                                padding: const EdgeInsets.all(10)),
                            child: SvgPicture.asset("assets/svg/gallery_ic.svg"),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              context.read<CameraBloc>().add(
                                  const CameraEvent.captured(amountPicture: 1));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                                backgroundColor: AppColors.neutral_40,
                                padding: const EdgeInsets.all(10)),
                            child: const CircleAvatar(
                              backgroundColor: AppColors.blue_60,
                              radius: 25,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<CameraBloc>()
                                  .add(const CameraEvent.changeFlash());
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                                backgroundColor: AppColors.neutral_40,
                                padding: const EdgeInsets.all(10)),
                            child: SvgPicture.asset("assets/svg/flash_ic.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          failure: (error) {
            return ErrorWidget(error);
          },
          inProgress: (progressValue) {
            return LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.secondary),
              value: progressValue,
            );
          },
          success: (image, pathMoreThanOnce) {
            return const SizedBox.shrink();
          },
          captureFailure: (error) {
            return ErrorWidget(error);
          },
        );
      },
    );
  }
}
