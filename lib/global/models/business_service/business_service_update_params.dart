import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_service_update_params.freezed.dart';
part 'business_service_update_params.g.dart';

@freezed
class BusinessServiceUpdateParamas with _$BusinessServiceUpdateParamas {

  factory BusinessServiceUpdateParamas({
    String? name, 

  }) = _BusinessServiceUpdateParamas;

  factory BusinessServiceUpdateParamas.fromJson(Map<String, dynamic> json) => _$BusinessServiceUpdateParamasFromJson(json);
}