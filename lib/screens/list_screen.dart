import 'package:bloc_examples/blocs/list_bloc/list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<String> stringList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String value =
              (context.read<ListBloc>().state.list.length + 1).toString();
          context.read<ListBloc>().add(AddItem(
                itemValue: value,
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<ListBloc, ListState>(
        builder: (context, state) {
          if (state.list.isEmpty) {
            return const Center(
              child: Text(
                "No Entries in list",
              ),
            );
          }
          return ListView.builder(
            itemCount: state.list.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.black,
                child: ListTile(
                  trailing: IconButton(
                    onPressed: () {
                      context.read<ListBloc>().add(
                            RemoveItem(
                              index: index,
                            ),
                          );
                    },
                    icon: const Icon(Icons.delete),
                  ),
                  title: Text(
                    state.list[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
