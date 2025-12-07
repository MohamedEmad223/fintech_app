part of 'botnavbar_cubit.dart';

@freezed
class BotnavbarState with _$BotnavbarState {
  const factory BotnavbarState.initial() = _Initial;

  const factory BotnavbarState.changeIndex(int index) = _ChangeIndex;
}
