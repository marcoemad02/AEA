import 'package:aea/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const AEA());
}

class AEA extends StatelessWidget {
  const AEA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,

      //home: SplashView(),
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:
          const Color(0xffF6F1F1)), //background for all screens
    );
  }
}
