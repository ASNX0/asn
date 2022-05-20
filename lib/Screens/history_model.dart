// ignore: camel_case_types
class hist {
  hist({
    required this.qr,
    required this.createdAt,
  });

  String qr;
  DateTime createdAt;

  factory hist.fromJson(Map<String, dynamic> json) => hist(
        qr: json["qr"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "qr": qr,
        "created_at": createdAt.toIso8601String(),
      };
}
