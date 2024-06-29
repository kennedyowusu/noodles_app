import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/utils/validations.dart';
import 'package:gobe_app/views/main_view.dart';

class AuthForm extends StatefulWidget {
  final bool isRegisterView;
  final bool isForgetPasswordView;
  final bool isLoginView;

  const AuthForm({
    super.key,
    this.isRegisterView = false,
    this.isForgetPasswordView = false,
    this.isLoginView = false,
  });

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  bool _obscureConfirmText = true;
  String? _password;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          if (widget.isRegisterView) ...[
            _buildFullNameField(),
            const SizedBox(height: defaultPadding),
          ],
          _buildEmailField(),
          if (!widget.isForgetPasswordView) ...[
            const SizedBox(height: defaultPadding),
            _buildForgetPasswordField(),
          ],
          if (widget.isRegisterView) ...[
            const SizedBox(height: defaultPadding),
            _buildConfirmPasswordField(),
          ],
          const SizedBox(height: defaultPadding),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                setState(() {
                  isLoading = true;
                });

                await Future.delayed(kDefaultDuration);

                setState(() {
                  isLoading = false;
                });

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainView(),
                  ),
                );
              }
            },
            child: Text(
              _getButtonText(),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  String _getButtonText() {
    if (widget.isRegisterView) {
      return "Register";
    } else if (widget.isForgetPasswordView) {
      return "Forgot Password";
    } else if (widget.isLoginView) {
      return "Login";
    }
    return "";
  }

  Widget _buildFullNameField() {
    return TextFormField(
      validator: nameValidator,
      onSaved: (value) {},
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: "Full Name",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      validator: emailValidator,
      onSaved: (value) {},
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: "Email Address",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email),
      ),
    );
  }

  Widget _buildForgetPasswordField() {
    return TextFormField(
      obscureText: _obscureText,
      validator: passwordValidator,
      onSaved: (value) {},
      decoration: InputDecoration(
        hintText: "Password",
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: _obscureText
              ? const Icon(Icons.visibility_off, color: bodyTextColor)
              : const Icon(Icons.visibility, color: bodyTextColor),
        ),
      ),
    );
  }

  Widget _buildConfirmPasswordField() {
    return TextFormField(
      obscureText: _obscureConfirmText,
      validator: (value) => passwordConfirmationValidator(value, _password),
      onSaved: (value) {},
      decoration: InputDecoration(
        hintText: "Confirm Password",
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureConfirmText = !_obscureConfirmText;
            });
          },
          child: _obscureConfirmText
              ? const Icon(Icons.visibility_off, color: bodyTextColor)
              : const Icon(Icons.visibility, color: bodyTextColor),
        ),
      ),
    );
  }
}
