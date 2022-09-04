import 'package:DigitalizAqui/breakpoints/breakpoints.dart';
import 'package:DigitalizAqui/widgets/appbar/mobile_app_bar.dart';
import 'package:DigitalizAqui/widgets/appbar/web_app_bar.dart';
import 'package:DigitalizAqui/widgets/session/advantages_section.dart';
import 'package:DigitalizAqui/widgets/session/courses_section.dart';
import 'package:DigitalizAqui/widgets/session/top_seccion.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(
                    double.infinity,
                    56,
                  ),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(
                    double.infinity,
                    72,
                  ),
                  child: WebAppBar(),
                ),
          drawer:
              constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1400,
              ),
              child: ListView(
                children: const [
                  TopSession(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
