import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/riverpord_generator/providers/counter_provider.dart';
import 'package:flutter_riverpod_example/riverpord_generator/providers/greeting_provider.dart';
import 'package:flutter_riverpod_example/riverpord_generator/providers/title_provider.dart';

class MainReverpordGeneratorPage extends ConsumerWidget {
  const MainReverpordGeneratorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(titleProvider)),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "Future Provider",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                ref.watch(greetingProvider(nama: 'Jhon')).when(
                      data: (data) => data,
                      error: (error, stackTrace) => error.toString(),
                      loading: () => "Loading ...",
                    ),
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Stream Provider",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                ref.watch(numbersProvider).when(
                      data: (data) => data.toString(),
                      error: (error, stackTrace) => error.toString(),
                      loading: () => "Loading ...",
                    ),
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
