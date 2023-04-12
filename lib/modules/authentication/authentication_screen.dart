import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/app_router.gr.dart';
import '../../global/components/components.dart';
import '../dashboard/views/devices/device_create_view.dart';
import 'views/login_view.dart';
import '../../core/themes/themes.dart';
import 'components/components.dart';


@RoutePage()
class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        final screen = MediaQuery.of(context).size.width;
        return Row(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.max, children: [
          if (screen.isDesktop)
            Container(
              color: kPrimaryColor,
              child: const Text('AstraZeneca'),
            ).expanded(),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: kMobileBreakpoint, maxHeight: 100.h),
              child: const LogInForm().paddingSymmetric(kSpacing, kSpacing5),
            ).scrollable(),
          ).expanded(),
        ]);
      }),
    );
  }
}
