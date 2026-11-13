import '../models/post.dart';

/// Abstraksi repository untuk data Post.
abstract class PostRepository {
  /// Mengambil daftar seluruh post dari API[cite: 16].
  Future<List<Post>> getPosts();
}