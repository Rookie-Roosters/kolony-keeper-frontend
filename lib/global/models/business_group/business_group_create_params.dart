import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group_create_params.freezed.dart';
part 'business_group_create_params.g.dart';

@freezed
class BusinessGroupUpdateParamas with _$BusinessGroupUpdateParamas {

  factory BusinessGroupUpdateParamas({
    required String name,
    List<String>? tags,
  }) = _BusinessGroupUpdateParamas;

  factory BusinessGroupUpdateParamas.fromJson(Map<String, dynamic> json) => _$BusinessGroupUpdateParamasFromJson(json);
}