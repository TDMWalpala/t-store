import 'package:flutter/material.dart';
import 'package:t_store/common/widgets.login_signup/login_divider.dart';
import 'package:t_store/common/widgets.login_signup/social_btns.dart';
import 'package:t_store/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),
              const TLoginDivider(dividerText: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwSections,),
              const TLoginSocialBtn(),
              const SizedBox(height: TSizes.spaceBtwSections,)
            ],
          ),
        ),
      ),
    );
  }
}

