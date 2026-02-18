import 'package:flutter/material.dart';

class LatestTwo extends StatefulWidget {
  const LatestTwo({super.key});

  @override
  State<LatestTwo> createState() => _LatestTwoState();
}

class _LatestTwoState extends State<LatestTwo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}