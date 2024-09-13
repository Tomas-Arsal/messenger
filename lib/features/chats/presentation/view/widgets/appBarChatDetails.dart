import 'package:flutter/material.dart';

PreferredSizeWidget appBarChatDetails(userModel){
  return AppBar(
    title: InkWell(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 0.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                userModel.image,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            userModel.name,
            style: const TextStyle(
              height: 2.9,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    ),
  );
}