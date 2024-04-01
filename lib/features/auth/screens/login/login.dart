import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/login_divider.dart';
import 'package:t_store/features/auth/screens/login/widgets/login_form.dart';
import 'package:t_store/features/auth/screens/login/widgets/login_header.dart';
import 'package:t_store/common/widgets/login_signup/social_btns.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(dark: dark),
              const TLoginForm(),
              TLoginDivider(dividerText:  TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TLoginSocialBtn(),
            ],
          ),
        ),
      ),
    );
  }
}