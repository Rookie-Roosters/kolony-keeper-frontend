import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../global/components/components.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';
import '../../../../global/usecases/usecases.dart';

class BusinessGroupCreateView extends StatefulWidget {
  const BusinessGroupCreateView({ Key? key }) : super(key: key);

  @override
  _BusinessGroupCreateViewState createState() => _BusinessGroupCreateViewState();
}

class _BusinessGroupCreateViewState extends State<BusinessGroupCreateView> {
  final nameField = TextEditingController(); 
  final tagsField = TextEditingController(); 
  bool isLoading = false; 
  String? message;
  
  late IAuthenticationRepository _authenticationRepository; 
  late IBusinessGroupsRepository _businessGroupsRepository;
  late IBusinessGroupCreateUseCase _businessGroupCreateUseCase;

  @override
  void initState(){
    _businessGroupsRepository = BusinessGroupsRepository();
    _authenticationRepository = context.read<AuthenticationRepository>();
    _businessGroupCreateUseCase = BusinessGroupCreateUseCase(_businessGroupsRepository, _authenticationRepository);
    super.initState();
  }

  handleBusinessGroupCreate() async{
    setState(() => isLoading = true);
    final res = await _businessGroupCreateUseCase.call(
      BusinessGroupCreateParams(name: nameField.text),
    );
    res.fold((l) => message = l.message, (r) => message = r.toString());
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
    ? const CircularProgressIndicator()
    : Column(
      crossAxisAlignment: CrossAxisAlignment.center, 
      mainAxisSize: MainAxisSize.min,
      children: [
        if(message != null) Text(message!), 
        TextFormField(controller: nameField,),
        TextFormField(controller: tagsField,), 
        CustomButton.elevated(
          const Text('Create Business Group'), 
          onPressed: handleBusinessGroupCreate,
        )
      ],
    ); 
  }
}