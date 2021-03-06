import 'package:flutter/material.dart';

import '../size_config.dart';

class AuthScreenHeader extends StatelessWidget {
  const AuthScreenHeader({
    Key? key,
    required this.title,
    required this.description,
    this.disableMargin = false,
  }) : super(key: key);

  final String title, description;
  final bool disableMargin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: getProportionateScreenWidth(28),
              ),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        if (!disableMargin) SizedBox(height: SizeConfig.screenHeight * 0.08),
      ],
    );
  }
}
