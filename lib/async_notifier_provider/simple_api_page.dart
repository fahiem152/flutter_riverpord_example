import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/user_list_provider.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/presentation/providers/provider.dart';

class SimpleAPiPage extends ConsumerWidget {
  const SimpleAPiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple API Page"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20.0),
            child: ref.watch(userListProvider).when(
                  data: (data) {
                    return ListView.builder(
                      itemCount: data.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                              "${data[index].firstName!} ${data[index].lastName}"),
                          subtitle: Text(data[index].email!),
                        );
                      },
                    );
                  },
                  error: (error, stackTrace) =>
                      Text("Error: ${error.toString()}"),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                )),
      ),
    );
  }
}
