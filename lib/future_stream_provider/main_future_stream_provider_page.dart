import 'package:flutter/material.dart';

import 'package:flutter_riverpod_example/future_stream_provider/presentations/pages/future_provider_page.dart';
import 'package:flutter_riverpod_example/future_stream_provider/presentations/pages/stream_provider_page.dart';

class MainFutureStreamProviderPage extends StatelessWidget {
  const MainFutureStreamProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StreamProviderPage(),
    );
  }
}
