import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../global/components/components.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';
import '../../../../global/usecases/business_groups/business_group_get_usecase.dart';
import '../../../../global/usecases/usecases.dart';

class BusinessGroupGetByIdView extends StatefulWidget {
  const BusinessGroupGetByIdView({ Key? key }) : super(key: key);

  @override
  _BusinessGroupGetByIdViewState createState() => _BusinessGroupGetByIdViewState();
}

class _BusinessGroupGetByIdViewState extends State<BusinessGroupGetByIdView> {
  final idField = TextEditingController(); 
  bool isLoading = false; 
  String? message;
  
  late IAuthenticationRepository _authenticationRepository; 
  late IBusinessGroupsRepository _businessGroupsRepository;
  late IBusinessGroupGetByIdUseCase _businessGroupGetByIdUseCase;

  @override
  void initState(){
    _businessGroupsRepository = BusinessGroupsRepository();
    _authenticationRepository = context.read<AuthenticationRepository>();
    _businessGroupGetByIdUseCase = BusinessGroupGetByIdUseCase(_businessGroupsRepository, _authenticationRepository);
    super.initState();
  }

  handleBusinessGroupCreate() async{
    setState(() => isLoading = true);
    final res = await _businessGroupGetByIdUseCase.call(
      BusinessGroupGetByIdParams(id: idField.text)
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
        TextFormField(controller: idField,),
        CustomButton.elevated(
          const Text('Search Business Group By Id'), 
          onPressed: handleBusinessGroupCreate,
        )
      ],
    ); 
  }
}