import 'package:flutter/material.dart';

Widget numberOfReacts(){
  return      Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: InkWell(
            child: Column(
              children: const [
                Text(
                  '100',
                  style: TextStyle(
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Posts ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            child: Column(
              children: const [
                Text(
                  '170',
                  style: TextStyle(
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Photos ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            child: Column(
              children: const [
                Text(
                  '250',
                  style: TextStyle(
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Followers ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            child: Column(
              children: const [
                Text(
                  '3005',
                  style: TextStyle(
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Followings ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}