class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Business',
      kacl: 1,
      meals: <String>['Targets,', 'Missions,', 'Sales reports'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/lunch.png',
      titleTxt: 'Missions',
      kacl: 1,
      meals: <String>['Adem,', 'Jack,', 'Emilie'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: 'Plans',
      kacl: 0,
      meals: <String>['Shifts', 'Scheduels'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'Alerts',
      kacl: 0,
      meals: <String>['Task :', 'Feed back', 'recommondation'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Business',
      kacl: 0,
      meals: <String>['Targets,', 'Missions,', 'Sales reports'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
  ];
}
