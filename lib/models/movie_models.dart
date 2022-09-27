class Movies {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  const Movies({
    required this.name,
    required this.imagePath,
    required this.videoPath,
    required this.category,
    required this.year,
    required this.duration,
  });

  static const movies = [
    Movies(
      name: 'The Sea Beast',
      imagePath:
          'https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Kids',
      year: 2022,
      duration: Duration(hours: 1, minutes: 55),
    ),
    Movies(
      name: 'Purple Hearts',
      imagePath:
          'https://images.unsplash.com/photo-1518134346374-184f9d21cea2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Romance',
      year: 2022,
      duration: Duration(hours: 2, minutes: 3),
    ),
    Movies(
      name: 'The Gray Man',
      imagePath:
          'https://images.unsplash.com/photo-1559583109-3e7968136c99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Thriller',
      year: 2022,
      duration: Duration(hours: 2, minutes: 9),
    ),
    Movies(
      name: 'Thirteen Lives',
      imagePath:
          'https://images.unsplash.com/photo-1559108318-39ed452bb6c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Drama',
      year: 2022,
      duration: Duration(hours: 2, minutes: 22),
    ),
    Movies(
      name: 'The Innocents',
      imagePath:
          'https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Thriller',
      year: 2022,
      duration: Duration(hours: 1, minutes: 58),
    ),
    Movies(
      name: 'Lightyear',
      imagePath:
          'https://images.unsplash.com/photo-1611419010196-a360856fc42f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Kids',
      year: 2022,
      duration: Duration(hours: 1, minutes: 40),
    ),
    Movies(
      name: 'Leave No Trace',
      imagePath:
          'https://images.unsplash.com/photo-1597910037310-7dd8ddb93e24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Drama',
      year: 2022,
      duration: Duration(hours: 1, minutes: 48),
    ),
    Movies(
      name: 'Hustle',
      imagePath:
          'https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      videoPath: 'assets/videos/example.mov',
      category: 'Drama',
      year: 2022,
      duration: Duration(hours: 1, minutes: 58),
    ),
  ];
}
