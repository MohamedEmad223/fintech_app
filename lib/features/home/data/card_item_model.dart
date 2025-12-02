import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_item_model.freezed.dart';

@freezed
abstract class CardItemModel with _$CardItemModel {
  const factory CardItemModel({
    required String title,
    required String value,
    String? percent,
  }) = _CardItemModel;
}
