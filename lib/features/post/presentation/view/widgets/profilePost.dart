import 'package:flutter/material.dart';

profilePost() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Card(
        elevation: 0.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/93131130_253599402481984_5654185219524132864_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_ohc=VqOkkRigKP8AX8wHUmx&tn=MGDyw8JXcSfb0lzV&_nc_ht=scontent.fcai21-4.fna&oh=00_AfBX0lQPSwWzo8uCLKKh2xADw6b0PE8RkKpkE7PoMVV5fA&oe=639FB65C',
          ),
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Text(
        'Tomas Arsal',
        style: TextStyle(
          height: 2.9,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
    ],
  );
}
