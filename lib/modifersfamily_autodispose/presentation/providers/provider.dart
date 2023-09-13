import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/entities/user.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/reposiitories/user_repoistory.dart';

// Opsi 5
var userRepository = Provider.family<UserRepository, CancelToken?>(
    (ref, cancelToken) => UserRepository(cancelToken: cancelToken));

// Opsi 1,2,3, 4
// var userRepository = Provider((ref) => UserRepository());

// Opsi 1 Normal
// var userProvider = FutureProvider<User?>(
//   (ref) => ref.watch(userRepository).getUser(1),
// );

// Opsi 2 familiy => untuk parameter
// var userProvider = FutureProvider.family<User?, int>(
//   (ref, id) => ref.watch(userRepository).getUser(id),
// );

// Opsi 3 familiy | autoDispose => untuk parameter | setelah userProvider tidak digunakan atau dalam kasus ini di back maka akan di hapus atau di hancurkan
// var userProvider = FutureProvider.autoDispose.family<User?, int>(
//   (ref, id) => ref.watch(userRepository).getUser(id),
// );

// Opsi 4 familiy | autoDispose => untuk parameter | setelah userProvider tidak digunakan atau dalam kasus ini di back maka akan di hapus atau di hancurkan
// keepAlive() jika user provider di hancurkan tapi variable user tetap di jaga
// var userProvider = FutureProvider.autoDispose.family<User?, int>((ref, id) {
//   var user = ref.watch(userRepository).getUser(id);
//   ref.keepAlive();
//   return user;
// });

// Opsi 4 familiy | autoDispose => untuk parameter | setelah userProvider tidak digunakan atau dalam kasus ini di back maka akan di hapus atau di hancurkan
// keepAlive() jika user provider di hancurkan tapi variable user tetap di jaga
// onDispose = jika kita masuk ke User Page dan kita langsung Back maka  dio atau http request langsung tidak jalankan alias langsung berhenri alias tidak jadi get user
var userProvider = FutureProvider.autoDispose.family<User?, int>(
  (ref, id) async {
    CancelToken cancelToken = CancelToken();
    ref.onDispose(() {
      cancelToken.cancel();
    });
    var user = await ref.watch(userRepository(cancelToken)).getUser(id);
    ref.keepAlive();
    return user;
  },
);
