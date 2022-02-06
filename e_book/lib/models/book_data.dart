import 'dart:collection';

class BookData {
  static final List<Book> _books = [
    Book(
      title: 'Crushing & Influence',
      author: 'Gary Venchuk',
      imageSrc: 'assets/images/book-1.png',
      rating: 4.9,
    ),
    Book(
      title: 'Top Ten Business Hacks',
      author: 'Herman Joel',
      imageSrc: 'assets/images/book-2.png',
      rating: 4.8,
    ),
    Book(
      title: 'How To Win Friends\n& Influence People',
      author: 'Gary Venchuk',
      imageSrc: 'assets/images/book-3.png',
      rating: 4.9,
      description:
          'When the earth was flat and everyone wanted to win the game of the best and people….',
    ),
  ];

  static Book get bestOfTheDay => _books[2];
  static UnmodifiableListView<Book> get books => UnmodifiableListView(_books);
}

class Book {
  Book({
    required this.title,
    required this.author,
    required this.imageSrc,
    this.description,
    this.rating = 0.0,
  });

  String title;
  String author;
  String imageSrc;
  String? description;
  double rating;
}
