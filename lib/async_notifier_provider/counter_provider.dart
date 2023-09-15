import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

// Opsi 1
// @riverpod
// class Counter extends _$Counter {
//   @override
//   int build() => 0;

//   void increment() => state++;
// }

// Opsi 2
// @riverpod
// class Counter extends _$Counter {
//   @override
//   int build({required int value}) => value;

//   void increment() => state++;
// }

// Opsi 3
// @Riverpod(keepAlive: true)
// class Counter extends _$Counter {
//   @override
//   int build({required int value}) => value;

//   void increment() => state++;
// }

// Opsi 4
// @Riverpod(keepAlive: true)
// class Counter extends _$Counter {
//   @override
//   Future<int> build() async {
//     await Future.delayed(const Duration(seconds: 3));
//     return 0;
//   }

//   void increment() {
//     int? nilai = state.valueOrNull;
//     if (nilai != null) {
//       state = AsyncData(nilai + 1);
//     }
//   }
// }

// Opsi 5
@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  Future<int> build({required int nilai}) async {
    await Future.delayed(const Duration(seconds: 3));
    return nilai;
  }

  void increment() {
    int? nilai = state.valueOrNull;
    if (nilai != null) {
      state = AsyncData(nilai + 1);
    }
  }
}
