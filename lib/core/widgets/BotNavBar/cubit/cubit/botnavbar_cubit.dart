import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'botnavbar_state.dart';
part 'botnavbar_cubit.freezed.dart';

class BotnavbarCubit extends Cubit<BotnavbarState> {
  BotnavbarCubit() : super(BotnavbarState.initial());

  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(BotnavbarState.changeIndex(index));
  }

  void resetIndex() {
    currentIndex = 0;
    emit(const BotnavbarState.changeIndex(0));
  }
}
