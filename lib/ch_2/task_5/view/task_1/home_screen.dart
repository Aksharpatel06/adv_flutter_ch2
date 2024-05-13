import 'package:flutter/material.dart';

import 'componects/intro_plan_screen.dart';
import 'componects/intro_template_screen.dart';
import 'componects/intro_working_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        children: [
          IntroTemplateScreen(),
          IntroPlanScreen(),
          IntroWorkingScreen(),
        ],
      ),
    );
  }
}
