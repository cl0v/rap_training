abstract class IBeat {
  Future<int> restart();
  Future<int> play();
  Future<int> stop();
  Future<int> resume();
  Future<int> pause();
}
