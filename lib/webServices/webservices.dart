import 'package:equb/widgets/collectedPayments/model.dart';
import 'package:equb/widgets/duePayments/model.dart';
import 'package:http/http.dart' as http;
class HttpServices{

  static Future<List<Payment>> getPayments() async {
    String url = 'https://610e396448beae001747ba80.mockapi.io/duePayments';
    try {
      final response = await http.get(Uri.parse(url));
      print(response.body);
      final List<Payment> payments = paymentFromJson(response.body);
      return payments;

    } catch (e) {
      return <Payment>[];
    }
  }
  static Future<List<CollectedPayment>> getCollectedPayments() async {
    String url =
        'https://610e396448beae001747ba80.mockapi.io/collectedPayments';
    // var uri = Uri.parse(uri);
    try {
      final response = await http.get(Uri.parse(url));
      print(response.body);
      final List<CollectedPayment> colpays =
      collectedPaymentFromJson(response.body);
      return colpays;
    } catch (e) {
      return <CollectedPayment>[];
    }
  }
}