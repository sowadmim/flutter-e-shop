import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: const Body(),
    );
  }
}
