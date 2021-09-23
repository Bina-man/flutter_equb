import 'dart:convert';

class Payment {
  Payment({
    this.createdAt,
    this.owedAmount,
    this.dueDate,
    this.name,
    this.paidRounds,
    this.totalRounds,
    this.id,
  });

  DateTime createdAt;
  String owedAmount;
  DateTime dueDate;
  String name;
  int paidRounds;
  int totalRounds;
  String id;

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        createdAt: DateTime.parse(json["createdAt"]),
        owedAmount: json["owedAmount"],
        dueDate: DateTime.parse(json["dueDate"]),
        name: json["name"],
        paidRounds: json["paidRounds"],
        totalRounds: json["totalRounds"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "owedAmount": owedAmount,
        "dueDate": dueDate.toIso8601String(),
        "name": name,
        "paidRounds": paidRounds,
        "totalRounds": totalRounds,
        "id": id,
      };
}

List<Payment> paymentFromJson(String str) =>
    List<Payment>.from(json.decode(str).map((x) => Payment.fromJson(x)));

String paymentToJson(List<Payment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
