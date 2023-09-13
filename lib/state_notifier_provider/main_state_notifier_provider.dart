import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/state_notifier_provider/home_state_notifier_provider_page.dart';

class MainStateNotifierProvider extends StatelessWidget {
  const MainStateNotifierProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeStateNotifierProviderPage(),
    );
  }
}
