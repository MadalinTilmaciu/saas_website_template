import 'package:flutter/material.dart';

import 'presentations/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const SaaSTemplate());
}

class SaaSTemplate extends StatelessWidget {
  const SaaSTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SaaS Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5236FF),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
