import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/state_notifier_provider/person.dart';

class PersonNotifier extends StateNotifier<Person> {
  PersonNotifier() : super(const Person(name: "no Name", age: 0));

  void changeName(String name) => state = state.copyWith(name: name);
  void birthDay() => state = state.copyWith(age: state.age + 1);
}

final personProvider = StateNotifierProvider<PersonNotifier, Person>(
  (ref) => PersonNotifier(),
);
