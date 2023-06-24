import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff2D4059),
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      title:

      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Center(
              child: Text("Akhbar Elyoum Academy",style: TextStyle(fontSize: 17),)
          ),
          SizedBox(width:22),
          Image.asset(
            'asset/home logo.png', // Replace with your image path
            width: 75,
            height: 85,
          ),

        ],
      ),
    );
  }
}