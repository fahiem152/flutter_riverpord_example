import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/state_provider/provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int number = ref.watch(counterProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$number",
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(counterProvider.notifier).state += 1;
                },
                child: const Text("Counter+")),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(counterProvider);
                },
                child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
