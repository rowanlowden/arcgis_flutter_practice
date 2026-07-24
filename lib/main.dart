import 'package:flutter/material.dart';

void main() {
  runApp(const MiniSampleApp());
}

class MiniSampleApp extends StatelessWidget {
  const MiniSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Emulator Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const SampleHomePage(),
    );
  }
}

class SampleHomePage extends StatefulWidget {
  const SampleHomePage({super.key});

  @override
  State<SampleHomePage> createState() => _SampleHomePageState();
}

class _SampleHomePageState extends State<SampleHomePage> {
  int _tapCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Emulator Check')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.phone_android, size: 56),
              const SizedBox(height: 16),
              const Text(
                'If you can see this screen,\n'
                'your sample app is running on the emulator.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text('Tap count: $_tapCount'),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: () => setState(() => _tapCount++),
                icon: const Icon(Icons.touch_app),
                label: const Text('Tap me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
