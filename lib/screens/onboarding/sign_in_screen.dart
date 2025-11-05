import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payments_app/localization/localization_text.dart';
import 'package:payments_app/utils/widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final ValueNotifier<bool> isPasswordObscured = ValueNotifier(true);

  @override
  void dispose() {
    isPasswordObscured.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  context.pop();
                },
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                AppLocalizationText.signin,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 50),
              Text(
                AppLocalizationText.emailAddress,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextField(
                style: Theme.of(context).textTheme.titleMedium,

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).dividerColor,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.surface,
                    ), // Grey on focus
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.surface,
                    ), // Grey normally
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                AppLocalizationText.password,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              ValueListenableBuilder(
                valueListenable: isPasswordObscured,
                builder: (context, value, child) {
                  return TextField(
                    obscureText: value,
                    style: Theme.of(context).textTheme.titleMedium,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 15),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).dividerColor,
                      ),
                      suffixIcon: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          isPasswordObscured.value = !value;
                        },
                        child: Icon(
                          (value) ? Icons.visibility : Icons.visibility_off,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.surface,
                        ), // Grey on focus
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.surface,
                        ), // Grey normally
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 40),
              buttonWidget(
                context: context,
                onTap: () {
                  context.push('/bottomnav');
                },
                buttonText: AppLocalizationText.signin,
              ),
              SizedBox(height: 30),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: AppLocalizationText.imaNewUser,
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: ' ${AppLocalizationText.signup}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.push('/signup');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
