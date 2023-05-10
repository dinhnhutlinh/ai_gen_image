import 'package:ai_gen_image/ai_gen_image.dart';

class AiGenImage {
  static final AiGenImage _instance = AiGenImage._internal();

  AiGenImage._internal();

  static AiGenImage get instance => _instance;

  final neuralLoveService = NeuralLoveService();

  /// Get all styles
  /// return list of styles as String
  Future<List<String>> getStyles() async {
    return await neuralLoveService.getStyle();
  }

  /// Create a single order
  /// prompt: prompt for order
  /// quanlity: quanlity for order
  /// style: style for order
  /// return orderId as String
  Future<String> createOrder(
      {required String prompt, int? quanlity, required String style}) async {
    return await neuralLoveService.createOrder(
        prompt: prompt, quanlity: quanlity, style: style);
  }

  /// Create multiple orders at once
  /// n: number of orders
  /// prompt: prompt for all orders
  /// quanlity: quanlity for all orders
  /// return list of orderIds as String
  Future<List<String>> createOders(
      {required int n,
      required String prompt,
      int? quanlity,
      required String style}) async {
    return await neuralLoveService.createOders(
        n: n, prompt: prompt, quanlity: quanlity, style: style);
  }

  /// Get order info
  /// orderId: orderId for order
  /// return orderInfo as OrderInfo
  /// if order is ready, return orderInfo
  Future<OrderInfo> getOrderInfo({required String orderId}) async {
    return await neuralLoveService.getOrder(orderId: orderId);
  }
}
