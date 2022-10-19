import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'dino_game.dart';

void main() {
  final game = DinoGame();
  runApp(
    GameWidget(game: game),
  );
}
