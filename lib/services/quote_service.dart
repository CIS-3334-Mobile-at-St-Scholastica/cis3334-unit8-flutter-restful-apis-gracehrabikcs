import 'package:http/http.dart' as http;
import '../data_models/quote.dart';

/// Fetches a single random programming quote
Future<ProgQuote> fetchQuote() async {
  final uri = Uri.https(
    'programming-quotes-api.vercel.app', // domain
    '/api/random',                        // path
  );

  final resp = await http.get(uri);

  if (resp.statusCode != 200) {
    throw Exception('Programming Quotes API ${resp.statusCode}');
  }

  return progQuoteFromJson(resp.body);
}
