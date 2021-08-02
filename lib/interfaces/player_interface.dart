abstract class IPlayer {
  restart() {}
  play() {}
  // void stop(){}
  resume() {}
  pause() {}
}


abstract class IAudioPlayer {
  restart() {}
  play(String url) {}
  void stop(){}
  resume() {}
  pause() {}
}
