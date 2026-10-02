import 'package:flutter/material.dart';
import '../models/poem.dart';
import '../screens/poem_detail_page.dart';

class PoemCard extends StatelessWidget {
  final Poem poem;

  const PoemCard({super.key, required this.poem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => PoemDetailPage(poem: poem)),
        );
      },
      child: Ink(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: const Color(0xFF171311),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.white.withOpacity(.06)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              poem.category.toUpperCase(),
              style: const TextStyle(
                color: Color(0xFFC49A6C),
                fontSize: 10,
                letterSpacing: 2,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              poem.title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              poem.excerpt,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white.withOpacity(.66),
                fontSize: 15,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Text(
                  poem.date,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.38),
                    fontSize: 11,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_rounded,
                  size: 18,
                  color: Color(0xFFC49A6C),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
