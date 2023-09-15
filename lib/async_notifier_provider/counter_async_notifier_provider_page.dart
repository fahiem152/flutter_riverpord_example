import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/counter_provider.dart';

class CounterAsyncNotifierProviderPage extends ConsumerWidget {
  const CounterAsyncNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Async Notifier Provider Page"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // Opsi 1
                // ref.watch(counterProvider).toString(),

                // Opsi 2 dan 3
                // ref.watch(counterProvider(value: 5)).toString(),

                // Opsi 4
                // ref.watch(counterProvider).when(
                //       data: (data) => "$data",
                //       error: (error, stackTrace) {
                //         return error.toString();
                //       },
                //       loading: () => "Laoding ....",
                //     ),

                // Opsi 5
                ref.watch(counterProvider(nilai: 10)).when(
                      data: (data) => "$data",
                      error: (error, stackTrace) {
                        return error.toString();
                      },
                      loading: () => "Laoding ....",
                    ),
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(counterProvider(nilai: 10).notifier).increment();
                  // ref.read(counterProvider.notifier).increment();
                },
                child: const Text(
                  "Increment",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
