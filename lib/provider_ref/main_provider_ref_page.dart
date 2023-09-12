import 'package:flutter/material.dart';

import 'package:flutter_riverpod_example/provider_ref/frist_page.dart';

class MainProviderRefPage extends StatelessWidget {
  const MainProviderRefPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      home: FristPage(),
    );
  }
}
