import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class TimerTab extends StatelessWidget {
  const TimerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bedtime Audio Stop'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  Icon(Icons.bedtime_rounded, size: 64, color: AppTheme.primary),
                  SizedBox(height: 12),
                  Text('45 Minutes', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                  Text('Playback will automatically turn off', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
