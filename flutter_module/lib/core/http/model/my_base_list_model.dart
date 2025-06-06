import 'package:json_annotation/json_annotation.dart';

import '../../jsonConverter/safe_num_converter.dart';
part 'my_base_list_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, converters: [SafeNumConverter()])
class MyBaseListModel<T> {
  @JsonKey(name: 'code')
  num? code;
  @JsonKey(name: 'message')
  String? message;

  List<T>? data;

  MyBaseListModel({
    this.code,
    this.message,
    this.data,
  });

  factory MyBaseListModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$MyBaseListModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$MyBaseListModelToJson(this, toJsonT);

  /// 是否成功
  bool isSucess() {
    bool result = this.code == 0;
    return result;
  }
}
