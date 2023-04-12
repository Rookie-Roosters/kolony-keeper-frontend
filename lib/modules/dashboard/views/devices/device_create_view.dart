import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../global/components/components.dart';
import '../../../../global/entities/entities.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';
import '../../../../global/usecases/devices/device_create_usecase.dart';

class DeviceCreateView extends StatefulWidget {
  const DeviceCreateView({ Key? key }) : super(key: key);

  @override
  _DeviceCreateViewState createState() => _DeviceCreateViewState();
}

class _DeviceCreateViewState extends State<DeviceCreateView> {
  final userField = TextEditingController();
  final nameField = TextEditingController(); 
  final tokenField = TextEditingController();
  bool isLoading = false; 
  String? message;

  late IAuthenticationRepository _authenticationRepository;
  late IDevicesRepository _devicesRepository; 
  late IDeviceCreateUseCase _deviceCreateUseCase; 


  @override
  void initState() {
    _devicesRepository = DevicesRepository(); 
    _authenticationRepository = context.read<IAuthenticationRepository>();
    _deviceCreateUseCase = DeviceCreateUseCase(_devicesRepository, _authenticationRepository);
    super.initState();
  }

  handleDeviceCreate() async{
    setState(() => isLoading = true);
    final res = await _deviceCreateUseCase.call(
      DeviceCreateParams(
        user: userField.text, 
        name: nameField.text, 
        token: tokenField.text,
      )
    );
    res.fold((l) => message = l.message, (r) => message = r.toString());
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min,
        children: [
          if(message != null) Text(message!), 
          TextFormField(controller: userField,), 
          TextFormField(controller: nameField,), 
          TextFormField(controller: tokenField,),
          CustomButton.elevated(
            const Text('Create Device'), 
            onPressed: handleDeviceCreate,
          )
        ],);
  }
}