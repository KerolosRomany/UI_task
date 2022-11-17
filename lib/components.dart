import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SmallButton({required onPressed,required String text}) => MaterialButton(
    height: 50,
    onPressed: onPressed,
    child: Text(text,style: TextStyle(
        color: Colors.white,
    ),

    ),

);

Widget buildContactCard({required String picture,required String name,required String date,required Color iconColor}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            CircleAvatar(
                child: Image(image:AssetImage(picture)),
                radius: 30,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(name,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(
                        height: 5,
                    ),
                    Text(date,style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.normal),),

                ],
            ),
            Spacer(),
            Icon(Icons.phone_callback_outlined,color: iconColor,),
        ],
    );
}