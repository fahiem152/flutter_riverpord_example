import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'greating_provider.dart';
// @riverpod
// Future<String> greating(GreatingRef ref, {required String name})async{
//   await Future.delayed(Duration(seconds: 3));
//   return "Hello Selmata Pagi $name";
// }
// unutk buat Future Provider dengan Riverpord Generator
// Kemudia jalan kan di terminal dart run build_runner watch -d
// setelah runnning build runner akan menghasilkan file greating_provider.g.dart

part 'greeting_provider.g.dart';

@riverpod
Future<String> greeting(GreetingRef ref, {required String nama}) async {
  await Future.delayed(const Duration(seconds: 3));
  return "Hallo $nama";
}
