import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchInitial()) {
    on<EnableOrDisableNotification>(_switchEnableOrDisable);
    on<SliderEvent>(_sliderValueUpdater);
  }
  void _switchEnableOrDisable(SwitchEvent event, Emitter<SwitchState> emit) {
    emit(
      state.copyWith(
        switchValue: !state.switchValue,
      ),
    );
  }

  void _sliderValueUpdater(SliderEvent event, Emitter<SwitchState> emit) {
    emit(
      state.copyWith(
        sliderValue: event.slider,
      ),
    );
  }
}
