class TodoModel {
  final String activityType;
  final String description;
  final String date;
  final String? imageUrl;

  TodoModel({required this.activityType,  this.imageUrl, required this.description, required this.date});
  Map<String, String> toMap() {
    return {
      "activity_type": activityType,
      "image_url": imageUrl!,
      "description": description,
      "date": date
    };
  }
}