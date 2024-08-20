part of 'counter_bloc_bloc.dart';

sealed class CounterBlocEvent extends Equatable {
  const CounterBlocEvent();

  @override
  List<Object> get props => [];
}

class DecrementCounter extends CounterBlocEvent {}

class IncrementCounter extends CounterBlocEvent {}

class MultiplyCounter extends CounterBlocEvent {}
