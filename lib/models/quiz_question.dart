class QuizQuestion{
  const QuizQuestion(this.image, this.question, this.answers);

  final String image;
  final String question;
  final List<String> answers;

  List<String> shuffleAnswers(){
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}