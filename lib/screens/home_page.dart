import 'package:flutter/material.dart';
import '../data/poems.dart';
import '../widgets/poem_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final featured = poems.first;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ANGGANISM',
                    style: const TextStyle(
                      color: Color(0xFFC49A6C),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 4,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'kata-kata yang\nmenolak untuk hilang.',
                    style: const TextStyle(
                      fontSize: 39,
                      height: .98,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Ruang kecil untuk puisi, ingatan,\ndan hal-hal yang sulit diucapkan.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.55),
                      fontSize: 15,
                      height: 1.55,
                    ),
                  ),
                  const SizedBox(height: 34),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF241C17),
                          Color(0xFF13100E),
                        ],
                      ),
                      border: Border.all(color: Colors.white10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PUISI PILIHAN',
                          style: TextStyle(
                            color: Color(0xFFC49A6C),
                            fontSize: 10,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          '“${featured.excerpt}”',
                          style: const TextStyle(
                            fontSize: 25,
                            height: 1.3,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '— Muhammad Alghazali',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 38),
                  const Text(
                    'PUISI TERBARU',
                    style: TextStyle(
                      color: Color(0xFFC49A6C),
                      fontSize: 11,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
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
