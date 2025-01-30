class ProjectUtils{
  final String image;
  final String title;
  final String subTitle;
  final String? GitHubLink;

 ProjectUtils({
  required this.image,
  required this.title,
  required this.subTitle,
  this.GitHubLink,
});
}

//hobby projects

List<ProjectUtils> workProjectUtils=[
  ProjectUtils(
      image: 'Assets/projects/newsApp.jpg',
      title: 'Newsie Bee',
      subTitle: 'A News app made in flutter',
      GitHubLink:'https://github.com/Uanuragdhyay/NewsBee'
  ),
  ProjectUtils(
      image: 'Assets/projects/inventory management.jpg',
      title: 'Invento',
      subTitle: 'A Flutter based Inventory Management App',
      GitHubLink:'https://github.com/Uanuragdhyay/InventoryManagamentFrontend'
  ),
  ProjectUtils(
      image: 'Assets/projects/recipeApp.jpg',
      title: 'Recipe Book',
      subTitle: 'A recipe app made by flutter',
      GitHubLink:'https://github.com/Uanuragdhyay/RecipieBook'
  ),
  ProjectUtils(
      image: 'Assets/projects/quizApp.jpg',
      title: 'Flutter Quiz App',
      subTitle: 'App to learn basic flutter',
      GitHubLink:'https://github.com/Uanuragdhyay/QuizApp'
  ),
  ProjectUtils(
    image: 'Assets/img.png',
    title: 'MausamApp',
    subTitle: 'A weather App made with flutter',
    GitHubLink:'https://github.com/Uanuragdhyay/MausamApp'
  ),

  ProjectUtils(
      image: 'Assets/projects/rollDiceApp.jpg',
      title: 'Basic Dice App',
      subTitle: 'Simple roll dice app to make understanding of stateful widgets',
      GitHubLink:'https://github.com/Uanuragdhyay/rollDiceApp'
  ),




];