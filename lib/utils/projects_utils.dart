class ProjectsUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidlink;
  final String? ioslink;
  final String? weblink;

  ProjectsUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidlink,
    this.ioslink,
    this.weblink,
});
}

List<ProjectsUtils> hobbyProjectUtils = [
  ProjectsUtils(image: 'assets/projects/chat.png', title: "Chatting App", subtitle: "This is a Communication between two person by this application", androidlink: "https://play.google.com/store/apps/details?id=com.pubg.imobile&pli=1", ioslink: "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf"),
  ProjectsUtils(image: 'assets/projects/calc.jpg', title: "Calculator App", subtitle: "This is a Calculator which is provied some user input calculation", androidlink: "https://play.google.com/store/apps/details?id=com.pubg.imobile&pli=1", ioslink: "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf"),
  ProjectsUtils(image: 'assets/projects/Foodie.jpg', title: "Chatting App", subtitle: "This is a Food oder application", androidlink: "https://play.google.com/store/apps/details?id=com.pubg.imobile&pli=1",ioslink: "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf"),
  ProjectsUtils(image: 'assets/projects/download.jpeg', title: "City App", subtitle: "This is a local City app which provides all information about the city", androidlink: "https://play.google.com/store/apps/details?id=com.pubg.imobile&pli=1", weblink: "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf"),
  ProjectsUtils(image: 'assets/projects/bgmi.jpeg', title: "Tonament App", subtitle: "This is a Gaming registration application which provides some tounaments", androidlink: "https://play.google.com/store/apps/details?id=com.pubg.imobile&pli=1", weblink: "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf"),
];

