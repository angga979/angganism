import 'package:flutter/material.dart';
import '../data/poems.dart';
import '../widgets/poem_card.dart';

class PoemsPage extends StatelessWidget {
  const PoemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 28, 24, 18),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'PUISI',
                    style: TextStyle(
                      color: Color(0xFFC49A6C),
                      fontSize: 12,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Arsip kata.',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${poems.length} karya dalam ruang Angganism.',
                    style: const TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 30),
            sliver: SliverList.separated(
              itemCount: poems.length,
              itemBuilder: (_, i) => PoemCard(poem: poems[i]),
              separatorBuilder: (_, __) => const SizedBox(height: 14),
            ),
          ),
        ],
      ),
    );
  }
}
