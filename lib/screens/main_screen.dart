import 'package:flutter/material.dart';
import 'tabs/player_tab.dart';
import 'tabs/playlists_tab.dart';
import 'tabs/equalizer_tab.dart';
import 'tabs/timer_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [PlayerTab(), PlaylistsTab(), EqualizerTab(), TimerTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.play_circle_outline), selectedIcon: Icon(Icons.play_circle), label: 'Player'),
          NavigationDestination(icon: Icon(Icons.queue_music_outlined), selectedIcon: Icon(Icons.queue_music), label: 'Channels'),
          NavigationDestination(icon: Icon(Icons.equalizer_outlined), selectedIcon: Icon(Icons.equalizer), label: 'EQ'),
          NavigationDestination(icon: Icon(Icons.bedtime_outlined), selectedIcon: Icon(Icons.bedtime), label: 'Timer'),
        ],
      ),
    );
  }
}
