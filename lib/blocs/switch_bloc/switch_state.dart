part of 'switch_bloc.dart';

// ignore: must_be_immutable
class SwitchState extends Equatable {
  bool switchValue;
  double sliderValue;
  SwitchState({
    this.sliderValue = 0,
    this.switchValue = false,
  });

  SwitchState copyWith({bool? switchValue, double? sliderValue}) {
    return SwitchState(
      switchValue: switchValue ?? this.switchValue,
      sliderValue: sliderValue ?? this.sliderValue,
    );
  }

  @override
  List<Object> get props => [
        switchValue,
        sliderValue,
      ];
}

// ignore: must_be_immutable
final class SwitchInitial extends SwitchState {}
