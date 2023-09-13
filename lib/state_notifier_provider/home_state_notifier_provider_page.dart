import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/state_notifier_provider/person_provider.dart';

class HomeStateNotifierProviderPage extends ConsumerWidget {
  HomeStateNotifierProviderPage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var person = ref.watch(personProvider);
    var age = ref.watch(personProvider.select((value) => value.age));

    ref.listen(personProvider, (previous, next) => log("state Person berubah"));
    ref.listen(personProvider.select((value) => value.age),
        (previous, next) => log(" Age Berubah"));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
                controller: controller,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              person.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "$age",
              // "${person.age}",
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(personProvider.notifier).changeName(controller.text);
                },
                child: const Text("Change Name")),
            const SizedBox(
              height: 8.0,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(personProvider.notifier).birthDay();
                },
                child: const Text("Birth Day"))
          ],
        ),
      ),
    );
  }
}
