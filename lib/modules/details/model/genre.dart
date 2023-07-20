enum Genre {
  action,
  adventure,
  animation,
  comedy,
  crime,
  documentary,
  drama,
  family,
  fantasy,
  history,
  horror,
  music,
  mystery,
  romance,
  scienceFiction,
  tvMovie,
  thriller,
  war,
  western,
  none;

  factory Genre.fromMap(Map<String, dynamic> data) {
    final value = data['name'];
    switch (value.toLowerCase()) {
      case 'action':
        return Genre.action;
      case 'adventure':
        return Genre.adventure;
      case 'animation':
        return Genre.animation;
      case 'comedy':
        return Genre.comedy;
      case 'crime':
        return Genre.crime;
      case 'documentary':
        return Genre.documentary;
      case 'drama':
        return Genre.drama;
      case 'family':
        return Genre.family;
      case 'fantasy':
        return Genre.fantasy;
      case 'history':
        return Genre.history;
      case 'horror':
        return Genre.horror;
      case 'music':
        return Genre.music;
      case 'mystery':
        return Genre.mystery;
      case 'romance':
        return Genre.romance;
      case 'science fiction':
        return Genre.scienceFiction;
      case 'tv movie':
        return Genre.tvMovie;
      case 'thriller':
        return Genre.thriller;
      case 'war':
        return Genre.war;
      case 'western':
        return Genre.western;
      default:
        return Genre.none;
    }
  }
}
