import 'package:flutter/material.dart';
import '../../../../layout/presentation/manger/Cubit/social_state.dart';

  stateSocialUpdateLoadingSuccess(state) {
  if (state is SocialUploadLoadingSuccess) {
    const LinearProgressIndicator();
  }
  if (state is SocialUploadLoadingSuccess) {
    const SizedBox(
      height: 10.0,
    );
  }
}
