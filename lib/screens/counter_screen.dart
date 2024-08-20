import 'package:bloc_examples/blocs/counter_bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBlocBloc, CounterBlocState>(
                builder: (context, state) {
              return Text(
                context.watch<CounterBlocBloc>().state.counter.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBlocBloc>().add(IncrementCounter());
                  },
                  child: const Text("Increment"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBlocBloc>().add(DecrementCounter());
                  },
                  child: const Text("Decrement"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBlocBloc>().add(MultiplyCounter());
                  },
                  child: const Text("Multiply by 2"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
