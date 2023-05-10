import 'package:ai_gen_image/src/services/neural_love_service.dart';
import 'package:test/test.dart';

void main() {
  final neural = NeuralLoveService();
  late List<String> styles;
  group('style', () {
    test('get style', () async {
      styles = await neural.getStyle();
      expect(styles, isNotEmpty);
    });
  });
  late String orderId;
  group('order', () {
    test(
      'as String',
      () async {
        final quantity = 1;
        final prompt = 'a cat';
        final style = styles[0];
        orderId = await neural.createOrder(
            prompt: prompt, quanlity: quantity, style: style);

        expect(orderId, isNotEmpty);
      },
    );
  });

  group('order info', () {
    test('get order info', () async {
      final orderInfo = await neural.getOrder(orderId: orderId);
      expect(orderInfo, isNotNull);
    });
  });
}
