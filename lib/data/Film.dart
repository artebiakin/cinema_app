class Film {
  final String cover;
  final String nameLocal;
  final String nameOrigin;
  final String description;
  final int age;
  final String director;
  final String releaseDate;
  final String language;
  final String genre;
  final String duration;
  final String production;
  final String studio;
  final String starring;
  final String endRental;
  final double ratingMIBD;

  Film(
      this.cover,
      this.nameLocal,
      this.nameOrigin,
      this.description,
      this.age,
      this.director,
      this.releaseDate,
      this.language,
      this.genre,
      this.duration,
      this.production,
      this.studio,
      this.starring,
      this.endRental,
      [this.ratingMIBD]);
}
