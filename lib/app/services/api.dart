import 'package:coronavirus_flutter_api_course/app/services/api_key.dart';

class Api {
  Api({required this.apiKey});

  final String apiKey;

  factory Api.sandbox() => Api(
        apiKey: APIKeys.ncovSandboxKey,
      );

  static final String host = "https://ncov2019-admin.firebaseapp.com";

  Uri tokenUri() => Uri(
        scheme: 'https',
        host: host,
        path: 'token',
      );
}
