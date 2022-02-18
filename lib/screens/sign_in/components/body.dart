import 'package:e_shop/constant.dart';
import 'package:flutter/material.dart';

import '../../../components/account_screen_header.dart';
import '../../../components/no_account.dart';
import '../../../components/social_icon.dart';
import '../../../size_config.dart';
import 'form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                const AuthScreenHeader(
                  title: 'Welcome Back',
                  description:
                      'Sign in with your email and password \nor continue with your social media account',
                ),
                const SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialIcon(svgSrc: 'assets/icons/google.svg'),
                    SocialIcon(svgSrc: 'assets/icons/facebook_2.svg'),
                    SocialIcon(svgSrc: 'assets/icons/twitter.svg'),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                const NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
