import 'dart:io';

import 'package:ai_gen_image/src/models/order_info/ai_image.dart';
import 'package:http/http.dart' as http;

extension ImageSave on AiImage {
  /// Save image to file
  /// path: path to save image
  /// return true if save success
  ///
  /// if name is null, name will be random
  /// if name not contains .jpg, .jpg will be add to name
  /// if name contains .jpg, .jpg will be ignore
  /// if error, return false
  Future<bool> saveFile(String path, {String? name}) async {
    if (path.isEmpty) {
      return false;
    }

    try {
      final response = await http.get(Uri.parse(full!));

      if (response.statusCode == 200) {
        final bytes = response.bodyBytes;
        name ??= ramdonName();

        // check add extension if not have
        if (!name.contains('.jpg')) {
          name += '.jpg';
        }

        final file = File('$path/$name');
        file.writeAsBytesSync(bytes);
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }

    return true;
  }

  String ramdonName() {
    final now = DateTime.now();
    final random = now.millisecondsSinceEpoch;
    return '$random.jpg';
  }
}
