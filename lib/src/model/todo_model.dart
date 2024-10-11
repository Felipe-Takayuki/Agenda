class TodoModel {
  final int? index;
  final String activityType;
  final String description;
  final String date;
  final String? imageUrl;

  TodoModel({this.index, required this.activityType,  this.imageUrl, required this.description, required this.date});

}

