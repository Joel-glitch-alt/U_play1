/// This class defines the variables used in the [voting_screen],
/// and is typically used to hold data that is passed between different parts of the application.
//class VotingModel {}
class VotingModel {
  final String artistName;
  final String genre;
  final int numberOfVotes;

  VotingModel({
    required this.artistName,
    required this.genre,
    required this.numberOfVotes,
  });
}
