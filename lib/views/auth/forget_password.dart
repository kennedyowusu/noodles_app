import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/image.dart';
import 'package:gobe_app/views/auth/login.dart';
import 'package:gobe_app/widgets/auth_form.dart';
import 'package:gobe_app/widgets/auth_text.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: defaultPadding * 2,
                ),
                Center(
                  child: Container(
                    width: width * 0.40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      onboarding,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding * 1.5),
                const AuthText(
                  title: "Enter Your Email Address!",
                ),
                const AuthForm(
                  isForgetPasswordView: true,
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w600),
                        text: "Remembered you password? ",
                        children: <TextSpan>[
                          TextSpan(
                            text: "Login.",
                            style: const TextStyle(color: primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginView(),
                                    ),
                                  ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
