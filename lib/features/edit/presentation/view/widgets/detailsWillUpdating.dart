import 'package:flutter/cupertino.dart';
import 'package:messenger/features/edit/presentation/view/widgets/phoneEdit.dart';
import 'bioEdit.dart';
import 'nameEdit.dart';

Widget detailsWillUpdating (nameController ,
bioController,
phoneController){
  return Column(children: [
    const SizedBox(
      height: 10.0,
    ),
    // nameEdit
    nameEdit(nameController),
    const SizedBox(
      height: 10.0,
    ),
    // bioEdit
    bioEdit(bioController),
    const SizedBox(
      height: 10.0,
    ),
    // phoneEdit
    phoneEdit(phoneController),
  ],

);
}