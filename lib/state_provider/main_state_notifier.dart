import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/state_provider/counte_page.dart';

class MainStateProviderPage extends StatelessWidget {
  const MainStateProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}
