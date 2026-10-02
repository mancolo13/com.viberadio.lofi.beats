import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class EqualizerTab extends StatefulWidget {
  const EqualizerTab({super.key});

  @override
  State<EqualizerTab> createState() => _EqualizerTabState();
}

class _EqualizerTabState extends State<EqualizerTab> {
  double _bass = 0.7;
  double _mid = 0.5;
  double _treble = 0.6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acoustic Equalizer'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _slider('Bass Boost', _bass, (v) => setState(() => _bass = v)),
                  const SizedBox(height: 16),
                  _slider('Mid Balance', _mid, (v) => setState(() => _mid = v)),
                  const SizedBox(height: 16),
                  _slider('Treble Clarity', _treble, (v) => setState(() => _treble = v)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _slider(String label, double val, ValueChanged<double> chg) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(value: val, activeColor: AppTheme.primary, onChanged: chg),
      ],
    );
  }
}
