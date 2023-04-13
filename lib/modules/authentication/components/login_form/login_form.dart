import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/app_router.gr.dart';
import '../../../../core/themes/themes.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../global/components/components.dart';
import '../../../../global/repositories/repositories.dart';
import 'login_form_bloc.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInFormBloc(RepositoryProvider.of<IAuthenticationRepository>(context)),
      child: BlocBuilder<LogInFormBloc, FormBlocState>(builder: (context, state) {
        final bloc = BlocProvider.of<LogInFormBloc>(context);

        if (state is FormBlocSuccess) context.router.replace(const DashboardRoute());

        return Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: [
          const Spacer(),
          Assets.app.kolonyKeeper.isologotype.image(
            height: 80,
          ),
          SpacerBox.vertical5,
          TextFieldBlocBuilder(
            textFieldBloc: bloc.email,
            keyboardType: TextInputType.emailAddress,
            isEnabled: state is! FormBlocLoading,
            decoration: const InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(LineAwesome.envelope),
            ),
          ),
          SpacerBox.vertical1,
          TextFieldBlocBuilder(
            textFieldBloc: bloc.password,
            suffixButton: SuffixButton.obscureText,
            isEnabled: state is! FormBlocLoading,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(LineAwesome.lock_solid),
            ),
          ),
          const Divider(height: kSpacing5),
          CustomButton.elevated(
            state is FormBlocLoading && bloc.logInMethod == LogInMethod.regular ? const CircularProgressIndicator() : const Text('LogIn'),
            prefix: const Icon(LineAwesome.sign_in_alt_solid),
            isBlock: true,
            onPressed: state is FormBlocLoading
                ? null
                : () {
                    bloc.logInMethod = LogInMethod.regular;
                    bloc.submit();
                  },
          ),
          SpacerBox.vertical,
          CustomButton.elevated(
            state is FormBlocLoading && bloc.logInMethod == LogInMethod.microsoft ? const CircularProgressIndicator() : const Text('Microsoft LogIn'),
            prefix: const Icon(LineAwesome.windows),
            color: Colors.blue,
            isBlock: true,
            onPressed: state is FormBlocLoading
                ? null
                : () {
                    bloc.logInMethod = LogInMethod.microsoft;
                    bloc.submit();
                  },
          ),
          SpacerBox.vertical,
          CustomText.caption('Test email: a@a.com', color: kDividerColor),
          CustomText.caption('Test password: Abc1234#', color: kDividerColor),
          const Spacer(),
          CustomText.label(
            'Powered by',
            color: Colors.black12,
          ),
          Assets.app.rookieRoosters.isologotypeNegative.image(color: Colors.black12, height: 25.sp),
        ]);
      }),
    );
  }
}
