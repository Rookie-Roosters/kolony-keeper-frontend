import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../../core/utils/utils.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';

class LogInFormBloc extends FormBloc<AuthenticationSession, Failure> {
  final IAuthenticationRepository authentication;

  final email = TextFieldBloc(validators: [FieldBlocValidators.required, FieldBlocValidators.email]);
  final password = TextFieldBloc(validators: [FieldBlocValidators.required, CustomValidators.securePassword]);

  LogInMethod logInMethod = LogInMethod.regular;

  LogInFormBloc(this.authentication) {
    addFieldBlocs(fieldBlocs: [email, password]);
  }

  @override
  FutureOr<void> onSubmitting() async {
    emitLoading();
    final res = await authentication.logIn(AuthenticationLogInParams(email: email.value, password: password.value));
    res.fold(
      (l) => emitFailure(failureResponse: l),
      (r) => emitSuccess(successResponse: authentication.session),
    );
  }
}

enum LogInMethod { regular, microsoft }
