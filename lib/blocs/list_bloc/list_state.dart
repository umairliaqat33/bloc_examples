part of 'list_bloc.dart';

sealed class ListState extends Equatable {
  final List<String> list;
  const ListState({this.list = const []});

  @override
  List<Object> get props => [list];
}

final class ListInitial extends ListState {}
