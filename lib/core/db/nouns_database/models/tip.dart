class Tip {
  const Tip({
    required this.id,
    required this.isException,
  });

  final int id;
  final bool isException;

  Map<String, dynamic> toJson() => {
        'id': id,
        'isException': isException,
      };

  factory Tip.fromJson(Map<String, dynamic> map) {
    return Tip(
      id: map['id']?.toInt() ?? 0,
      isException: map['isException'] ?? false,
    );
  }

  @override
  String toString() => 'Tip(id: $id, isException: $isException)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Tip && other.id == id && other.isException == isException;
  }

  @override
  int get hashCode => id.hashCode ^ isException.hashCode;
}
