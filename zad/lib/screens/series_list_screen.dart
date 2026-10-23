import 'package:flutter/material.dart';

import '../models/series.dart';
import 'series_detail_screen.dart';

class SeriesListScreen extends StatefulWidget {
  const SeriesListScreen({super.key});

  @override
  State<SeriesListScreen> createState() => _SeriesListScreenState();
}

class _SeriesListScreenState extends State<SeriesListScreen> {
  final Set<String> watched = {};

  Future<void> openDetails(SeriesItem series) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => SeriesDetailScreen(
          series: series,
          isWatched: watched.contains(series.name),
        ),
      ),
    );

    if (result != null) {
      setState(() {
        watched.add(series.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = [];
    for (final series in seriesList) {
      tiles.add(
        SeriesTile(
          series: series,
          isWatched: watched.contains(series.name),
          onOpen: () {
            openDetails(series);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Popis serija")),
      body: ListView(padding: const EdgeInsets.all(8), children: tiles),
    );
  }
}

class SeriesTile extends StatelessWidget {
  final SeriesItem series;
  final bool isWatched;
  final VoidCallback onOpen;

  const SeriesTile({
    super.key,
    required this.series,
    required this.isWatched,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            series.icon,
            size: 32,
            color: isWatched ? Colors.purple : Colors.grey,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  series.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(series.genre),
              ],
            ),
          ),
          IconButton(onPressed: onOpen, icon: const Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}
