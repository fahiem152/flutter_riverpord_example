import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/presentation/providers/provider.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UserPage",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return ref.watch(userProvider(2)).when(
              data: (data) {
                return Text(
                  "$data",
                  style: const TextStyle(
                    fontSize: 29.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              error: (error, stackTrace) {
                return Text(
                  error.toString(),
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              loading: () {
                return const CircularProgressIndicator();
              },
            );
          },
        ),
      ),
    );
  }
}

// class UserPage extends ConsumerWidget {
//   const UserPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "UserPage",
//           style: TextStyle(
//             fontSize: 24.0,
//           ),
//         ),
//       ),
//       body: Center(
//           child: ref.watch(userProvider).when(
//         data: (data) {
//           return Text(
//             "${data}",
//             style: const TextStyle(
//               fontSize: 29.0,
//               fontWeight: FontWeight.bold,
//             ),
//           );
//         },
//         error: (error, stackTrace) {
//           return Text(
//             error.toString(),
//             style: const TextStyle(
//               fontSize: 28.0,
//               fontWeight: FontWeight.bold,
//             ),
//           );
//         },
//         loading: () {
//           return const CircularProgressIndicator();
//         },
//       )),
//     );
//   }
// }
