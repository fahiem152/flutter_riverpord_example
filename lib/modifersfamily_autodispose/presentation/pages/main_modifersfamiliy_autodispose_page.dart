import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/presentation/pages/user_page.dart';

class MainModifersFamiliyAutoDisposPage extends StatelessWidget {
  const MainModifersFamiliyAutoDisposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UserPage()),
          );
        },
        child: const Text("User Page"),
      ),
    ));
  }
}
