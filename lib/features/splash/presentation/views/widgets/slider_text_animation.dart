import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import '../../../../../core/utils/app_string.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              AppString.splashName,
              style: Styles.textStyle30,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
