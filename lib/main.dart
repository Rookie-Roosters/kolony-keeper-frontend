import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/app_router.dart';
import 'core/config/config.dart';
import 'core/themes/themes.dart';
import 'global/repositories/repositories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final authentication = await AuthenticationRepository.init();
  runApp(KolonyKeeperApp(authentication: authentication));
  urlConfig();
}

class KolonyKeeperApp extends StatelessWidget {
  final _appRouter = AppRouter();
  final IAuthenticationRepository _authentication;

  KolonyKeeperApp({required IAuthenticationRepository authentication, super.key}) : _authentication = authentication;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IAuthenticationRepository>(create: (context) => _authentication),
      ],
      child: ResponsiveSizer(
        maxMobileWidth: kTabletBreakpoint,
        maxTabletWidth: kDesktopBreakpoint,
        builder: (context, orientation, screenType) {
          return MediaQuery(
            data: MediaQueryData(textScaleFactor: 1.dp),
            child: MaterialApp.router(
              theme: appTheme,
              debugShowCheckedModeBanner: false,
              routerConfig: _appRouter.config(),
            ),
          );
        },
      ),
    );
  }
}
