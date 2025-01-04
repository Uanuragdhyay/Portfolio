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
      image: 'Assets/projects/inventory management.jpg',
      title: 'Invento',
      subTitle: 'A Flutter based Inventory Management App',
      GitHubLink:'https://github.com/Uanuragdhyay/InventoryManagamentFrontend'
  ),
  ProjectUtils(
      image: 'Assets/projects/quizApp.jpg',
      title: 'Flutter Quiz App',
      subTitle: 'App to learn basic flutter',
      GitHubLink:'https://github.com/Uanuragdhyay/QuizApp'
  ),
  ProjectUtils(
      image: 'Assets/projects/rollDiceApp.jpg',
      title: 'Basic Dice App',
      subTitle: ' Simple roll dice app to understand stateful widget',
      GitHubLink:'https://github.com/Uanuragdhyay/rollDiceApp'
  ),
  ProjectUtils(
      image: 'Assets/projects/todoApp.jpg',
      title: 'Todo App',
      subTitle: 'To do App to learn basic widget based architecture ',
      GitHubLink:'https://github.com/Uanuragdhyay/TodoApp'
  ),
  ProjectUtils(
    image: 'Assets/projects/mausamApp.jpg',
    title: 'MausamApp',
    subTitle: 'A weather App made with flutter',
  ),


];