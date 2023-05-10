import 'package:ai_gen_image/ai_gen_image.dart';

Future<void> main(List<String> args) async {
  final aiGenImage = AiGenImage.instance;

  final styles = await aiGenImage.getStyles();

  final orderId = await aiGenImage.createOrder(
      prompt: 'a cat', quanlity: 1, style: styles[0]);

  final orderInfo = await aiGenImage.getOrderInfo(orderId: orderId);

  print(orderInfo);

  for (AiImage image in orderInfo.output!) {
    print(image.full);
  }
}
