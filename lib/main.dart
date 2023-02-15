import 'package:flutter/material.dart';
import 'package:testingflutterhooks/step_1_use_stream/use_stream_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: UseStreamHomePage(),
    );
  }
}
