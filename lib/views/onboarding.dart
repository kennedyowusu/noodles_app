import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/data.dart';
import 'package:gobe_app/views/auth/login.dart';
import 'package:gobe_app/widgets/dot_indicator.dart';
import 'package:gobe_app/widgets/onboarding_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Expanded(
              flex: 14,
              child: PageView.builder(
                itemCount: onboardingData.length,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => OnboardingItem(
                  image: onboardingData[index]["image"] ?? '',
                  title: onboardingData[index]["title"] ?? '',
                  subtitle: onboardingData[index]["subtitle"] ?? '',
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (index) => DotIndicator(isActive: index == currentPage),
              ),
            ),
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
                child: Text("Get Started".toUpperCase()),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
