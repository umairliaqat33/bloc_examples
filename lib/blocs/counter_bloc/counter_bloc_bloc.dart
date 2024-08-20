import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
    on<MultiplyCounter>(_multiply);
  }
  void _increment(IncrementCounter event, Emitter<CounterBlocState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterBlocState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }

  void _multiply(MultiplyCounter event, Emitter<CounterBlocState> emit) {
    emit(state.copyWith(counter: state.counter * 2));
  }
}
