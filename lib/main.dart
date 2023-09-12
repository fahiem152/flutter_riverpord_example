import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/provider_ref/main_provider_ref_page.dart';
import 'package:flutter_riverpod_example/state_provider/main_state_notifier.dart';

void main() {
  // runApp(const ProviderScope(child: MainProviderRefPage()));
  runApp(const ProviderScope(child: MainStateProviderPage()));
}
