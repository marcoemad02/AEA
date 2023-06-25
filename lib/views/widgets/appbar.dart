import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff2D4059),
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      title: Center(
        child: Image.asset('asset/home logo.png',
            width: 77,
            height:40,
            fit:BoxFit.contain

        ),
      ),
      actions: <Widget>[
        IconButton(
          padding: const EdgeInsets.all(0),
          icon: const Icon(Icons.person,size:32,),
          selectedIcon: const Icon(Icons.person_3_outlined),
          tooltip: 'profile',
          onPressed: () {},



        ),const SizedBox(width:16,)


      ],
      elevation: 8.0,

      leading: IconButton( padding:const EdgeInsets.symmetric(horizontal: 20),
        icon: const Icon(Icons.menu,size: 30,),
        tooltip: 'Menu Icon',
        onPressed: () {},
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }
}