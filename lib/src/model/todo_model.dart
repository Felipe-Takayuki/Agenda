class TodoModel {
  final String activityType;
  final String description;
  final String date;
  final String? imageUrl;

  TodoModel({required this.activityType,  this.imageUrl, required this.description, required this.date});

}