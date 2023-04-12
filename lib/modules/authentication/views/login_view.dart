import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../global/components/components.dart';
import '../../../global/models/models.dart';
import '../../../global/repositories/repositories.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  final emailField = TextEditingController();
  final passwordField = TextEditingController();
  bool isLoading = false;
  String? message;

  late IAuthenticationRepository _authenticationRepository;

  @override
  initState() {
    _authenticationRepository = context.read<IAuthenticationRepository>();
    message = _authenticationRepository.session.toString();
    super.initState();
  }

  handleLogIn() async {
    setState(() => isLoading = true);
    final res = await _authenticationRepository.logIn(AuthenticationLogInParams(email: emailField.text, password: passwordField.text));
    res.fold((l) => message = l.message, (r) => message = r.toString());
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
            if (message != null) Text(message!),
            TextFormField(controller: emailField),
            TextFormField(controller: passwordField),
            CustomButton.elevated(
              const Text('Ingresar'),
              onPressed: handleLogIn,
            ),
          ]);
  }
}
