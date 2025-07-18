import 'package:bookly_app_1/core/utils/functions/custom_snake_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomer(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomSnakeBar(context, "can't launch $url");
    }
  }
}
