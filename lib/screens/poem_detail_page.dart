import 'package:flutter/material.dart';
import '../models/poem.dart';

class PoemDetailPage extends StatelessWidget {
  final Poem poem;

  const PoemDetailPage({super.key, required this.poem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ios_share_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(28, 20, 28, 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                poem.category.toUpperCase(),
                style: const TextStyle(
                  color: Color(0xFFC49A6C),
                  fontSize: 10,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                poem.title,
                style: const TextStyle(
                  fontSize: 42,
                  height: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                poem.date,
                style: const TextStyle(color: Colors.white38, fontSize: 12),
              ),
              const SizedBox(height: 42),
              Text(
                poem.body,
                style: const TextStyle(
                  fontSize: 21,
                  height: 1.8,
                  letterSpacing: .2,
                ),
              ),
              const SizedBox(height: 44),
              const Divider(color: Colors.white12),
              const SizedBox(height: 18),
              const Text(
                'ANGGANISM',
                style: TextStyle(
                  color: Color(0xFFC49A6C),
                  fontSize: 11,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
