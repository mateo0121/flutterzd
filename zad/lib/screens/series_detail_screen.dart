import 'package:flutter/material.dart';
import '../models/series.dart';

class SeriesDetailScreen extends StatelessWidget {
  final SeriesItem series;
  final bool isWatched;

  const SeriesDetailScreen({
    super.key,
    required this.series,
    required this.isWatched,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(series.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.purple),
              ),
              child: Row(
                children: [
                  Icon(series.icon, size: 48, color: Colors.purple),
                  const SizedBox(width: 12),
                  Expanded(child: Text(series.genre, style: const TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Text(
              series.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: isWatched
                      ? null
                      : () {
                          Navigator.pop(context, true);
                        },
                  child: Text(isWatched ? "Pogledano" : "Označi kao pogledano"),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Natrag"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}