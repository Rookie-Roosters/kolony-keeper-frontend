import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../core/app_router.gr.dart';
import '../../../../core/themes/themes.dart';
import '../../../../global/components/components.dart';
import '../../../../global/repositories/repositories.dart';

@RoutePage(name: 'UserProfileRoute')
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final authentication = RepositoryProvider.of<IAuthenticationRepository>(context);
    return Center(
        child: CustomButton.outlined(
      const Text('Log Out'),
      prefix: const Icon(LineAwesome.sign_out_alt_solid),
      color: kSecondaryColor,
      onPressed: () {
        authentication.logOut();
        context.router.replace(const AuthenticationRoute());
      },
    ));
  }
}
