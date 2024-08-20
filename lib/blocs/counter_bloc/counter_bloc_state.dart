part of 'counter_bloc_bloc.dart';

class CounterBlocState extends Equatable {
  final int counter;
  const CounterBlocState({
    this.counter = 10,
  });

  CounterBlocState copyWith({int? counter}) {
    return CounterBlocState(
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object> get props => [counter];
}

final class CounterBlocInitial extends CounterBlocState {}
