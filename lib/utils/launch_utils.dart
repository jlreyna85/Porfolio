import 'package:url_launcher/url_launcher.dart';

class LaunchUtils {
  static Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  static Future<void> launchEmail(String email, {String? subject}) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
      query: subject != null ? 'subject=$subject' : null,
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'No se pudo enviar el correo a: $email';
    }
  }
}
