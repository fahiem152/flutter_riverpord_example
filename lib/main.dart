import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/future_stream_provider/main_future_stream_provider_page.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/main_modifersfamiliy_autodispose.dart';
import 'package:flutter_riverpod_example/provider_ref/main_provider_ref_page.dart';
import 'package:flutter_riverpod_example/riverpord_generator/main_riverpord_generator.dart';
import 'package:flutter_riverpod_example/state_notifier_provider/main_state_notifier_provider.dart';
import 'package:flutter_riverpod_example/state_provider/main_state_notifier.dart';

void main() {
  // runApp(const ProviderScope(child: MainProviderRefPage()));
  // runApp(const ProviderScope(child: MainStateProviderPage()));
  // runApp(const ProviderScope(child: MainStateNotifierProvider()));
  // runApp(const ProviderScope(child: MainFutureStreamProviderPage()));
  // runApp(const ProviderScope(child: MainModifersFamilyAutoDispoes()));
  runApp(const ProviderScope(child: MainRiverpordGenerator()));
}
