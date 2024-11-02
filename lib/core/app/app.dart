import 'package:flutter/material.dart';
import 'package:jojo/core/app/style.dart';
import 'package:jojo/core/navigation/router.dart';

class jojo extends StatelessWidget {
  const jojo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "jojo",
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
