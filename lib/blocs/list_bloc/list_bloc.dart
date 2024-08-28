import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  List<String> stringList = [];

  ListBloc() : super(ListInitial()) {
    on<AddItem>(_addItem);
    on<RemoveItem>(_removeItem);
  }
  void _addItem(AddItem event, Emitter<ListState> emit) {
    stringList = List.from(state.list);
    stringList.add(event.itemValue);
    emit(
      state.copyWith(
        list: List.from(stringList),
      ),
    );
  }

  void _removeItem(RemoveItem event, Emitter<ListState> emit) {
    final updatedList = List<String>.from(state.list);
    log(updatedList.toString());

    updatedList.removeAt(event.index);

    log(updatedList.toString());

    emit(
      state.copyWith(
        list: updatedList,
      ),
    );
  }
}
