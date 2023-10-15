import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/core/routes/app_router.dart';
import 'package:suranect/core/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';

class PageIntro extends StatefulWidget {
  final String image;
  final RichText header;
  final String bodyText;
  final bool showBack;
  final PageController pageController;

  const PageIntro(
      {super.key,
      required this.image,
      required this.header,
      required this.bodyText,
      this.showBack = false,
      required this.pageController});

  @override
  State<PageIntro> createState() => _PageIntroState();
}

class _PageIntroState extends State<PageIntro> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            widget.image,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 30,
            right: 15,
            left: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                child: BlocBuilder<IntroductionBloc, IntroductionState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: index == state.pageIndex
                                  ? AppColors.white
                                  : AppColors.white.withOpacity(0.8),
                              shape: index == state.pageIndex
                                  ? BoxShape.rectangle
                                  : BoxShape.circle,
                              borderRadius: index == state.pageIndex
                                  ? const BorderRadius.all(Radius.circular(100))
                                  : null,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 25.0,
                  ),
                  child: Column(
                    children: [
                      widget.header,
                      const SizedBox(height: 10),
                      Text(
                        widget.bodyText,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      const Spacer(),
                      BlocBuilder<IntroductionBloc, IntroductionState>(
                        builder: (context, state) {
                          return Row(
                            children: [
                              widget.showBack
                                  ? Expanded(
                                      child: AppButton(
                                        onPressed: () {
                                          context.read<IntroductionBloc>().add(
                                              IntroductionEvent.changedPage(
                                                  state.pageIndex - 1));

                                          widget.pageController
                                              .jumpToPage(state.pageIndex - 1);
                                        },
                                        text: "Kembali",
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                              widget.showBack
                                  ? const SizedBox(width: 20)
                                  : const SizedBox.shrink(),
                              state.pageIndex < 2
                                  ? Expanded(
                                      child: AppButton(
                                        onPressed: () {
                                          context.read<IntroductionBloc>().add(
                                              IntroductionEvent.changedPage(
                                                  state.pageIndex + 1));

                                          widget.pageController
                                              .jumpToPage(state.pageIndex + 1);
                                        },
                                        buttonColor: AppColors.neutral_100,
                                        colorText: AppColors.white,
                                        text: "Selanjutnya",
                                      ),
                                    )
                                  : Expanded(
                                      child: AppButton(
                                        onPressed: () {
                                          context
                                              .read<IntroductionBloc>()
                                              .doneIntroUseCase(true);
                                          AppRouter.router
                                              .go(PAGES.login.screenPath);
                                        },
                                        buttonColor: AppColors.neutral_100,
                                        colorText: AppColors.white,
                                        text: "Done",
                                      ),
                                    ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
