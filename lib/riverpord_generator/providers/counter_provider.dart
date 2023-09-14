import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_provider.g.dart';

// @Riverpod(keepAlive: true)
// Stream<int> numbers(NumbersRef ref) async* {
//   int number = 1;
//   while (true) {
//     await Future.delayed(Duration(seconds: 1));
//     yield number++;
//   }
// }
// unutk buat Stream  Provider dengan Riverpord Generator
// Kemudia jalan kan di terminal dart run build_runner watch -d
// setelah runnning build runner akan menghasilkan file counter_provider.g.dart

@Riverpod(keepAlive: true)
Stream<int> numbers(NumbersRef ref) async* {
  int number = 1;
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield number++;
  }
}
