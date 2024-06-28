import 'package:url_launcher/url_launcher.dart';

abstract class LinkUtils {
  static void tryLaunchLink(String link, {LaunchMode? mode}) {
    final url = Uri.parse(link);
    tryLaunchUrl(url, mode: mode);
  }

  static void tryLaunchUrl(Uri url, {LaunchMode? mode}) async {
    if (!await launchUrl(
      url,
      mode: mode ?? LaunchMode.platformDefault,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
