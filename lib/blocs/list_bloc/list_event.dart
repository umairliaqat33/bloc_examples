part of 'list_bloc.dart';

sealed class ListEvent extends Equatable {
  const ListEvent();

  @override
  List<Object> get props => [];
}

class AddItem extends ListEvent {
  @override
  List<Object> get props => [];
}

class RemoveItem extends ListEvent {
  @override
  List<Object> get props => [];
}
