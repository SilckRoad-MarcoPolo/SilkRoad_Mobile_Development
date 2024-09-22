// lib/core/models/course.dart

class Course {
  final String id;
  final String title;
  final String description;
  final double price;
  final int duration;
  final bool isActive;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.duration,
    required this.isActive,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      duration: json['duration'],
      isActive: json['isActive'],
    );
  }
}
