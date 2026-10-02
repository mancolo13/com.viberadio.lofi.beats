import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PlaylistsTab extends StatelessWidget {
  const PlaylistsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final lists = [
      {'title': 'Chill Lofi Beats', 'tracks': '24 Tracks', 'icon': Icons.headphones_rounded},
      {'title': 'Deep Code Flow', 'tracks': '18 Tracks', 'icon': Icons.code_rounded},
      {'title': 'Cosmic Ambient Sleep', 'tracks': '12 Tracks', 'icon': Icons.nights_stay_rounded},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Sound Channels'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lists.length,
        itemBuilder: (ctx, i) {
          final l = lists[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(l['icon'] as IconData, size: 36, color: AppTheme.primary),
              title: Text(l['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(l['tracks'] as String),
              trailing: const Icon(Icons.play_circle_filled_rounded, color: AppTheme.primary, size: 32),
            ),
          );
        },
      ),
    );
  }
}
