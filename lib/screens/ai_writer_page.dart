import 'package:flutter/material.dart';

class AiWriterPage extends StatefulWidget {
  const AiWriterPage({super.key});

  @override
  State<AiWriterPage> createState() => _AiWriterPageState();
}

class _AiWriterPageState extends State<AiWriterPage> {
  final controller = TextEditingController();
  String selected = 'Kembangkan ide';

  final actions = [
    'Kembangkan ide',
    'Cari metafora',
    'Buat pembuka',
    'Cari judul',
    'Perbaiki diksi',
    'Buat lebih gelap',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'AI WRITER',
              style: TextStyle(
                color: Color(0xFFC49A6C),
                fontSize: 12,
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Temani aku\nmenulis.',
              style: TextStyle(
                fontSize: 42,
                height: .98,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'AI di Angganism akan menjadi teman berpikir—bukan menggantikan suaramu.',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 28),
            TextField(
              controller: controller,
              maxLines: 7,
              decoration: InputDecoration(
                hintText:
                    'Ceritakan ide, perasaan, atau potongan kalimatmu...',
                hintStyle: const TextStyle(color: Colors.white30),
                filled: true,
                fillColor: const Color(0xFF171311),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            const SizedBox(height: 22),
            const Text(
              'BANTUAN',
              style: TextStyle(
                color: Color(0xFFC49A6C),
                fontSize: 10,
                letterSpacing: 2.2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: actions.map((action) {
                final active = selected == action;
                return ChoiceChip(
                  label: Text(action),
                  selected: active,
                  onSelected: (_) => setState(() => selected = action),
                  labelStyle: TextStyle(
                    color: active ? const Color(0xFFE9DED0) : Colors.white60,
                    fontSize: 12,
                  ),
                  backgroundColor: const Color(0xFF171311),
                  selectedColor: const Color(0xFF3A2B21),
                  side: BorderSide(
                    color: active
                        ? const Color(0xFFC49A6C)
                        : Colors.white10,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: FilledButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'AI Writer akan disambungkan pada Phase 2.',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.auto_awesome),
                label: const Text('Mulai dengan AI'),
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFFC49A6C),
                  foregroundColor: const Color(0xFF17110D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
