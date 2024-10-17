import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:udemy_learning_app/presentation/resources/assets_manager.dart';
import 'package:udemy_learning_app/presentation/resources/color_manager.dart';
import 'package:udemy_learning_app/presentation/resources/string_manager.dart';
import 'package:udemy_learning_app/presentation/resources/values_manager.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController _pageController = PageController(initialPage: 0);
  late final List<SliderObject> _list = _getSliderData();
  int _currentIndex = 0;
  List<SliderObject> _getSliderData() => [
        SliderObject(
            title: AppStrings.onBoardingSubTitle1,
            subTitle: AppStrings.onBoardingSubTitle1,
            image: ImageAssets.onboardingLogo1),
        SliderObject(
            title: AppStrings.onBoardingSubTitle2,
            subTitle: AppStrings.onBoardingSubTitle2,
            image: ImageAssets.onboardingLogo2),
        SliderObject(
            title: AppStrings.onBoardingSubTitle3,
            subTitle: AppStrings.onBoardingSubTitle3,
            image: ImageAssets.onboardingLogo3),
        SliderObject(
            title: AppStrings.onBoardingSubTitle4,
            subTitle: AppStrings.onBoardingSubTitle4,
            image: ImageAssets.onboardingLogo4),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnboardingPage(sliderObject: _list[index]);
          }),
          bottomSheet: Container(
            color: ColorManager.white,
            // height: app,
          ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  SliderObject sliderObject;
  OnboardingPage({super.key, required this.sliderObject});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(sliderObject.image)
      ],
    );
  }
}

class SliderObject {
  String title, subTitle, image;
  SliderObject(
      {required this.title, required this.subTitle, required this.image});
}
