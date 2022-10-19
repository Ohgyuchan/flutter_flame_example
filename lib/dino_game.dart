import 'dart:ui';

import 'package:flame/game.dart';
import 'components/component.dart';

class DinoGame extends FlameGame {
  DinoPlayer dinoPlayer = DinoPlayer();
  DinoWorld dinoWorld = DinoWorld();
  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(dinoWorld);
    await add(dinoPlayer);
    dinoPlayer.position = dinoWorld.size / 1.5;
    camera.followComponent(dinoPlayer,
        worldBounds: Rect.fromLTRB(0, 0, dinoWorld.size.x, dinoWorld.size.y));
  }
}
