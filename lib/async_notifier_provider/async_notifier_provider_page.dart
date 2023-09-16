import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/counter_async_notifier_provider_page.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/simple_api_page.dart';

class AsyncNotifierProviderPage extends StatelessWidget {
  const AsyncNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asyn Notifier Provider"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const CounterAsyncNotifierProviderPage(),
                    ),
                  );
                },
                child: const Text(
                  "Counter Page",
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SimpleAPiPage(),
                    ),
                  );
                },
                child: const Text(
                  "Simple API Page",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
