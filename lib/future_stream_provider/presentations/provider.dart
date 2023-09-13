import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/future_stream_provider/repositories/animals_repository.dart';

var animalRepositoryProvider =
    Provider<AnimalRepository>((ref) => AnimalRepository());
var animalFutureProvider = FutureProvider<Animals>(
    (ref) => ref.watch(animalRepositoryProvider).getAnimal("Semarang"));
var animalStreamProvider = StreamProvider<Animals>(
    (ref) => ref.watch(animalRepositoryProvider).getAnimalStream("Demak"));
