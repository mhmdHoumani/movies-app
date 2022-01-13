class PostList {
  final List<Post> posts;

  PostList({required this.posts});

  factory PostList.fromJson(List<dynamic> parsedJson) {
    List<Post> posts = <Post>[];
    posts = parsedJson.map((e) => Post.fromJson(e)).toList();
    return new PostList(posts: posts); // Post[0].userId
  }
}

class Post {
  int userId, id;
  String name, email, body;

  Post(
      {required this.userId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        name: json['name'],
        email: json['email'],
        body: json['body']);
  }
}
