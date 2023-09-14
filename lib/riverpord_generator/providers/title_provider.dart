import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'title_provider.g.dart';
// @riverpod
// title(TitleRef ref) => "Riverpord Generator Demo Testing";
// unutk buat Provider dengan Riverpodr Generator
// Kemudia jalan kan di terminal dart run build_runner watch -d
// setelah runnning build runner akan menghasilkan file title_provider.g.dar

part 'title_provider.g.dart';

@riverpod
String title(TitleRef ref) => "Riverpord Generator Demo Testing";
