import 'dart:convert';

List<CollectedPayment> collectedPaymentFromJson(String str) =>
    List<CollectedPayment>.from(
        json.decode(str).map((x) => CollectedPayment.fromJson(x)));

String collectedPaymentToJson(List<CollectedPayment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CollectedPayment {
  CollectedPayment({
     this.createdAt,
     this.title,
     this.frequency,
     this.amount,
     this.membersCount,
     this.id,
  });

  DateTime createdAt;
  String title;
  int frequency;
  String amount;
  int membersCount;
  String id;

  factory CollectedPayment.fromJson(Map<String, dynamic> json) =>
      CollectedPayment(
        createdAt: DateTime.parse(json["createdAt"]),
        title: json["title"],
        frequency: json["frequency"],
        amount: json["amount"],
        membersCount: json["membersCount"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "title": title,
    "frequency": frequency,
    "amount": amount,
    "membersCount": membersCount,
    "id": id,
  };
}