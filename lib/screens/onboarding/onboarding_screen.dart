import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:payments_app/localization/localization_text.dart';
import 'package:payments_app/theme/app_colors.dart';
import 'package:payments_app/utils/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> svgImages = [
    'assets/images/onboarding_image_1.svg',
    'assets/images/onboarding_image_2.svg',
    'assets/images/onboarding_image_3.svg',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 280,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 335 / 266,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: svgImages.map((svgPath) {
                return Builder(
                  builder: (BuildContext context) {
                    return SvgPicture.asset(
                      svgPath,
                      fit: BoxFit.contain,
                      height: 266,
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: svgImages.asMap().entries.map((entry) {
                final isActive = entry.key == _currentIndex;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: isActive ? 25 : 7,
                  height: 7,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppColors.primary
                        : AppColors.primary.withAlpha(50),
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 34),
            Text(
              (_currentIndex == 0)
                  ? AppLocalizationText.onboardingTitle1
                  : (_currentIndex == 1)
                  ? AppLocalizationText.onboardingTitle2
                  : AppLocalizationText.onboardingTitle3,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 26),
            Text(
              (_currentIndex == 0)
                  ? AppLocalizationText.onboardingBody1
                  : (_currentIndex == 1)
                  ? AppLocalizationText.onboardingBody2
                  : AppLocalizationText.onboardingBody3,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 40),
            buttonWidget(
              context: context,
              onTap: () {
                context.push('/signin');
              },
              buttonText: AppLocalizationText.next,
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}
