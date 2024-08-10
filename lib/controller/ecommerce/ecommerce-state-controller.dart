import 'package:get/get.dart';

class EcommerceStateController extends GetxController {
  // INSTANT VARIABLES
  List<Map<String, dynamic>> _parts = [
    {
      "image": "assets/images/part6.png",
      "name": "Bosch Oil Filter",
      "price": "N9,850",
      "oldPrice": "N10,850",
      "rating": "4.5",
    },
    {
      "image": "assets/images/part5.png",
      "name": "NGK Spark Plugs",
      "price": "N9,850",
      "oldPrice": "N10,850",
      "rating": "4.5",
    },
    {
      "image": "assets/images/part6.png",
      "name": "Bosch Oil Filter",
      "price": "N9,850",
      "oldPrice": "N10,850",
      "rating": "4.5",
    },
    {
      "image": "assets/images/part5.png",
      "name": "NGK Spark Plugs",
      "price": "N9,850",
      "oldPrice": "N10,850",
      "rating": "4.5",
    },
    {
      "image": "assets/images/part6.png",
      "name": "Bosch Oil Filter",
      "price": "N9,850",
      "oldPrice": "N10,850",
      "rating": "4.5",
    },
    {
      "image": "assets/images/part5.png",
      "name": "NGK Spark Plugs",
      "price": "N9,850",
      "oldPrice": "N10,850",
      "rating": "4.5",
    },
  ];
  String _selectedPaymentMethod = "";

  // GETTERS
  List get parts => _parts;
  String get selectedPaymentMethod => _selectedPaymentMethod;

  // SETTERS
  updateParts(value) {
    _parts = value;
    update();
  }

  updatePaymentMethod(value) {
    _selectedPaymentMethod = value;
    update();
  }
}
