import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final String quote;
  final String author;

  const QuoteCard({
    this.quote = "Tetap semangat! Ilmu adalah cahaya kehidupan.",
    this.author = "Imam Syafi’i",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Color(0xFFFFE4E1), // Soft pink background
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '"$quote"',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.pink.shade900,
                    fontStyle: FontStyle.italic,
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              '- $author',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.pink.shade700,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
