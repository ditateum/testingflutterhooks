import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Stream<String> getTime() {
  return Stream.periodic(
    const Duration(seconds: 1),
    (_) => DateTime.now().toIso8601String(),
  );
}

class UseStreamHomePage extends HookWidget {
  const UseStreamHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // More simple than Stream Builder
    final dateTime = useStream(getTime());

    return Scaffold(
      appBar: AppBar(
        title: Text(dateTime.data ?? 'Home Page'),
      ),
      body: const Center(
        child: Text('Flutter Hooks'),
      ),
    );
  }
}
