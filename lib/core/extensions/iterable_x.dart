extension ChunkExtension<T> on Iterable<T> {
  Iterable<List<T>> chunked(int size) sync* {
    List<T> chunk = [];
    for (var item in this) {
      chunk.add(item);
      if (chunk.length == size) {
        yield chunk;
        chunk = [];
      }
    }
    if (chunk.isNotEmpty) yield chunk;
  }
}
