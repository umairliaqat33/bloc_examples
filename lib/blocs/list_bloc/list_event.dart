part of 'list_bloc.dart';

sealed class ListEvent extends Equatable {
  const ListEvent();

  @override
  List<Object> get props => [];
}

class AddItem extends ListEvent {
  final String itemValue;
  const AddItem({
    required this.itemValue,
  });

  @override
  List<Object> get props => [itemValue];
}

class RemoveItem extends ListEvent {
  final int index;
  const RemoveItem({
    required this.index,
  });
  @override
  List<Object> get props => [index];
}
