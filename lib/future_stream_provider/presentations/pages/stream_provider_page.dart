import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/future_stream_provider/presentations/provider.dart';

class StreamProviderPage extends StatelessWidget {
  const StreamProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(animalStreamProvider).when(
                    data: (data) {
                      return Image.asset(
                        data.path,
                        width: 100,
                        height: 100,
                      );
                    },
                    error: (error, stackTrace) => Text(error.toString()),
                    loading: () => const CircularProgressIndicator(),
                  ),
        ),
      ),
    );
  }
}
