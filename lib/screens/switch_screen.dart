import 'dart:developer';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notification",
                ),
                BlocBuilder<SwitchBloc, SwitchState>(
                  buildWhen: (previous, current) =>
                      previous.switchValue != current.switchValue,
                  builder: (context, state) {
                    return Switch(
                      value: state.switchValue,
                      onChanged: (bool? b) {
                        log(state.switchValue.toString());
                        context.read<SwitchBloc>().add(
                              EnableOrDisableNotification(),
                            );
                      },
                    );
                  },
                ),
              ],
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen: (previous, current) =>
                  previous.sliderValue != current.sliderValue,
              builder: (context, state) {
                return Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.red.withOpacity(state.sliderValue),
                );
              },
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen: (previous, current) =>
                  previous.sliderValue != current.sliderValue,
              builder: (context, state) {
                return Slider(
                  value: state.sliderValue,
                  onChanged: (double value) {
                    log("Slider value: $value");
                    context.read<SwitchBloc>().add(
                          SliderEvent(
                            slider: value,
                          ),
                        );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
