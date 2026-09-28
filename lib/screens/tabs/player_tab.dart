import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PlayerTab extends StatefulWidget {
  const PlayerTab({super.key});

  @override
  State<PlayerTab> createState() => _PlayerTabState();
}

class _PlayerTabState extends State<PlayerTab> {
  bool _isPlaying = false;
  String _station = "Tokyo Midnight Lo-Fi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VibeRadio Beats'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.card,
                  border: Border.all(color: AppTheme.primary, width: 4),
                ),
                child: const Icon(Icons.album_rounded, size: 100, color: AppTheme.secondary),
              ),
              const SizedBox(height: 32),
              Text(_station, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(_isPlaying ? '● LIVE STREAMING' : 'OFFLINE', style: TextStyle(color: _isPlaying ? Colors.greenAccent : AppTheme.textSecondary, fontWeight: FontWeight.bold)),
              const SizedBox(height: 32),
              IconButton(
                iconSize: 72,
                icon: Icon(_isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill, color: AppTheme.primary),
                onPressed: () => setState(() => _isPlaying = !_isPlaying),
              )
            ],
          ),
        ),
      ),
    );
  }
}
