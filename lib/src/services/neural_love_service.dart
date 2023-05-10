import 'dart:convert';

import 'package:ai_gen_image/src/models/order_info/order_info.dart';
import 'package:http/http.dart' as http;

class NeuralLoveService {
  final Map<String, dynamic> _payload = {
    "isPublic": true,
    "isPriority": false,
    "isHd": false,
    "steps": 25,
    "layout": "square",
    "cfgScale": 7.5,
  };
  final Map<String, String> _headers = {
    "accept": "application/json",
    "content-type": "application/json",
    "authorization":
        "Bearer v1.efe96e9218f8300595272740770902aad7dac63d4deddea60222ef6d466df734"
  };

  Future<List<String>> getStyle() async {
    final url = Uri.parse('https://api.neural.love/v1/ai-art/styles');

    final response = await http.get(url, headers: _headers);

    if (response.statusCode == 200) {
      final List<String> styles = jsonDecode(response.body).cast<String>();

      return styles;
    } else {
      throw Exception('Failed to load styles');
    }
  }

  Future<String> createOrder(
      {required String prompt, int? quanlity, required String style}) async {
    final url = 'https://api.neural.love/v1/ai-art/generate';
    _payload['prompt'] = prompt;
    _payload['amount'] = quanlity ?? 1;
    _payload['style'] = style;
    final response = await http.post(Uri.parse(url),
        headers: _headers, body: jsonEncode(_payload));

    if (response.statusCode == 200) {
      final orderInfo = jsonDecode(response.body);
      return orderInfo['orderId'];
    } else {
      throw Exception('Failed to create order');
    }
  }

  Future<List<String>> createOders(
      {required int n,
      required String prompt,
      int? quanlity,
      required String style}) async {
    final List<String> orders = [];
    for (var i = 0; i < n; i++) {
      final orderId =
          await createOrder(prompt: prompt, quanlity: quanlity, style: style);
      orders.add(orderId);
    }
    return orders;
  }

  Future<OrderInfo> getOrder({required String orderId}) async {
    final url = 'https://api.neural.love/v1/ai-art/orders/$orderId';

    final response = await http.get(Uri.parse(url), headers: _headers);

    if (response.statusCode == 200) {
      final orderInfo = jsonDecode(response.body);
      if (orderInfo['status']['isReady'] == false) {
        await Future.delayed(Duration(seconds: 2));
        return await getOrder(orderId: orderId);
      } else {
        return OrderInfo.fromJson(orderInfo);
      }
    } else {
      throw Exception('Failed to get order');
    }
  }
}

Future<void> main(List<String> args) async {
  final service = NeuralLoveService();
  // service.getStyle();

  final order = await service.createOrder(prompt: 'hello', style: 'cyberpunk');
  // '1edef39b-141f-64be-83c7-6b38f249ef77'
  final orderInfo = await service.getOrder(orderId: order);

  print(orderInfo);
}
