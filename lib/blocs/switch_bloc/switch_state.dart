part of 'switch_bloc.dart';

// ignore: must_be_immutable
class SwitchState extends Equatable {
  bool switchValue;
  SwitchState({
    this.switchValue = false,
  });

  SwitchState copyWith({bool? switchValue}) {
    return SwitchState(
      switchValue: switchValue ?? this.switchValue,
    );
  }

  @override
  List<Object> get props => [switchValue];
}

// ignore: must_be_immutable
final class SwitchInitial extends SwitchState {}
