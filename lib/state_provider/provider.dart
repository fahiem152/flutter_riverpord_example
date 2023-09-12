import 'package:flutter_riverpod/flutter_riverpod.dart';

// jika menggunakan autodispose tidak perlu menggunakan invalidate di buttton
// final counterProvider = StateProvider.autoDispose(
//   (ref) => 0,
// );
final counterProvider = StateProvider(
  (ref) => 0,
);
