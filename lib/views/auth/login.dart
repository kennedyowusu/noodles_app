import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/image.dart';
import 'package:gobe_app/views/auth/forget_password.dart';
import 'package:gobe_app/views/auth/register.dart';
import 'package:gobe_app/widgets/auth_form.dart';
import 'package:gobe_app/widgets/auth_text.dart';
import 'package:gobe_app/widgets/divider.dart';
import 'package:gobe_app/widgets/social_buttons.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  title: "Welcome Back!",
                ),
                const AuthForm(
                  isLoginView: true,
                ),
                const SizedBox(height: defaultPadding),

                // Forget Password
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordView(),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: secondaryColor,
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomDivider(),
                    const SizedBox(width: defaultPadding),
                    Center(
                      child: Text(
                        "Or Login With",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    const CustomDivider(),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      onPress: () {},
                      color: const Color(0xFF395998),
                      icon: Image.asset(
                        fb,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SocialButton(
                      onPress: () {},
                      color: const Color(0xFF395998),
                      icon: Image.asset(
                        twitter,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SocialButton(
                      onPress: () {},
                      color: const Color(0xFF395998),
                      icon: Image.asset(
                        gmail,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
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
                        text: "Don’t have an Account? ",
                        children: <TextSpan>[
                          TextSpan(
                            text: "Create One.",
                            style: const TextStyle(color: primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterView(),
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
