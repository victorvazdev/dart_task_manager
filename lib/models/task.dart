class Task {
  String id;
  String title;
  String description;
  bool isCompleted;

  Task(
      {required this.id,
      required this.title,
      required this.description,
      required this.isCompleted});

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
        id: map['id'] as String,
        title: map['title'] as String,
        description: map['description'] as String,
        isCompleted: map['isCompleted'] as bool);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted
    };
  }

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.isCompleted == isCompleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        isCompleted.hashCode;
  }

  @override
  String toString() {
    return '\nID: $id\nTítulo: $title \nDescrição: $description\nFeito: $isCompleted\n';
  }
}
