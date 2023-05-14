class DevArticleModel {
  const DevArticleModel(
    this.title,
    this.description,
    this.usedTech,
    this.developmentPeriod,
    this.position,
    this.members,
    this.githubLink,
    this.imagePath,
  );

  final String title;
  final String description;
  final String usedTech;
  final String developmentPeriod;
  final String position;
  final String members;
  final String githubLink;
  final String imagePath;

  factory DevArticleModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      throw const FormatException("Null JSON provided to DevArticleModel");
    }
    if (json['title'] == null) {
      throw const FormatException("Null title provided to DevArticleModel");
    }
    if (json['description'] == null) {
      throw const FormatException(
          "Null description provided to DevArticleModel");
    }
    if (json['usedTech'] == null) {
      throw const FormatException("Null usedTech provided to DevArticleModel");
    }
    if (json['developmentPeriod'] == null) {
      throw const FormatException(
          "Null developmentPeriod provided to DevArticleModel");
    }
    if (json['position'] == null) {
      throw const FormatException("Null position provided to DevArticleModel");
    }
    if (json['members'] == null) {
      throw const FormatException("Null menbers provided to DevArticleModel");
    }
    if (json['githubLink'] == null) {
      throw const FormatException(
          "Null githubLink provided to DevArticleModel");
    }
    if (json['image']['url'] == null) {
      throw const FormatException("Null imagePath provided to DevArticleModel");
    }

    return DevArticleModel(
        json['title'],
        json['description'],
        json['usedTech'],
        json['developmentPeriod'],
        json['position'],
        json['members'],
        json['githubLink'],
        json['image']['url']);
  }
}
