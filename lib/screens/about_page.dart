import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'TENTANG',
              style: TextStyle(
                color: Color(0xFFC49A6C),
                fontSize: 12,
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'ANGGANISM',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 26),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF171311),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Muhammad Alghazali',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Penulis • Pendidik • Penikmat kata',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Text(
              'Angganism adalah ruang personal untuk menyimpan puisi, gagasan, dan potongan perasaan yang mungkin terlalu rumit untuk disampaikan dengan percakapan biasa.',
              style: TextStyle(
                fontSize: 19,
                height: 1.7,
              ),
            ),
            const SizedBox(height: 26),
            const Text(
              'AI di dalam aplikasi ini dirancang sebagai teman berpikir dalam proses kreatif. Suara penulis tetap menjadi pusatnya.',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
                height: 1.7,
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Text(
                'ANGGANISM · 2026',
                style: TextStyle(
                  color: Colors.white.withOpacity(.25),
                  letterSpacing: 3,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
