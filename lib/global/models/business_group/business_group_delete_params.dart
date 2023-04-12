import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group_delete_params.freezed.dart';
part 'business_group_delete_params.g.dart';

@freezed
class BusinessGroupDeleteParamas with _$BusinessGroupDeleteParamas {

  factory BusinessGroupDeleteParamas({
    required String id, 
  }) = _BusinessGroupDeleteParamas;

  factory BusinessGroupDeleteParamas.fromJson(Map<String, dynamic> json) => _$BusinessGroupDeleteParamasFromJson(json);
}