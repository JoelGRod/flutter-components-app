import 'package:flutter/material.dart';

import 'package:components_app/shared/themes/themes.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: MainTheme.primaryColor,
      ),
    );
  }
}