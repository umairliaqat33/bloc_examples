import 'package:bloc_examples/blocs/switch_bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notification",
                ),
                BlocBuilder<SwitchBloc, SwitchState>(
                  builder: (context, state) {
                    return Switch(
                      value: state.switchValue,
                      onChanged: (bool? b) {
                        context.read<SwitchBloc>().add(
                              EnableOrDisableNotification(),
                            );
                      },
                    );
                  },
                ),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.red.withOpacity(0.2),
            ),
            Slider(
              value: 0.4,
              onChanged: (double value) {},
            ),
          ],
        ),
      ),
    );
  }
}
