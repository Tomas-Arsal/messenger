import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/features/chats/presentation/view/widgets/sendMessage.dart';
import 'package:messenger/features/chats/presentation/view/widgets/writeMessage.dart';


Widget MessageWriteAndSent(textController,
userModel,
context){return  Container(
  height: 45.0,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  decoration: BoxDecoration(
    border: Border.all(
      width: 1.0,
      color: Colors.grey.withOpacity(0.3),
    ),
    borderRadius: BorderRadius.circular(
      15.0,
    ),
  ),

  child: Padding(
    padding: const EdgeInsetsDirectional.only(
      start: 15.0,
    ),
    child: Row(
      children: [
        writeMessage(textController) ,
        //  if(messageImage != null)
        // Stack(
        //   alignment: AlignmentDirectional.topEnd,
        //   children: [
        //     Container(
        //       width: double.infinity,
        //       height: 10.0,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(4.0),
        //         image: DecorationImage(
        //           image: FileImage (messageImage) ,
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: IconButton(
        //         onPressed: () {
        //           SocialCubit.get(context).removemessageimage() ;
        //         },
        //         icon: const CircleAvatar(
        //           radius: 25.0,
        //           child: Icon(
        //             Icons.close,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // TextButton(
        //   onPressed: () {
        //     SocialCubit.get(context).getMessageImage();
        //   },
        //   child: Row(
        //     children: const [
        //       Icon(Icons.image),
        //     ],
        //   ),
        // ),
        sendMessage(textController, userModel, context),
      ],
    ),
  ),
);}