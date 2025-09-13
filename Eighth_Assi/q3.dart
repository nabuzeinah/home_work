/* Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
 only the movies with a rating above 7.
*/

void main() {
  Movie movie1 = Movie('Titanic', 9);
  Movie movie2 = Movie('Pride & Prejeudice', 10);
  Movie movie3 = Movie('Avatar', 8);
  Movie movie4 = Movie('The Dark Knight', 6);
  List<Movie> movies = [movie1, movie2, movie3, movie4];

  for (var movie in movies) {
    if (movie.rating! > 7) {
      print(movie.title);
    }
  }
}

class Movie {
  String? title;
  double? rating;

  Movie(String title, double rating) {
    this.title = title;
    this.rating = rating;
  }
}
