import 'package:flutter/material.dart';

import '../../../../../core/utils/Assets.dart';

class cardOfMyProfile extends StatelessWidget {
  const cardOfMyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Card(
      elevation: 0.0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: CircleAvatar(
        radius: 25,
     child: Image.asset(AssetData.profile),
      ),
    );
  }
}
