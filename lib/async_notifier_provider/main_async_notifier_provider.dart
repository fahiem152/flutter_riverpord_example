import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/async_notifier_provider_page.dart';

class MainAsyncNotifierProvider extends StatelessWidget {
  const MainAsyncNotifierProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AsyncNotifierProviderPage(),
    );
  }
}
