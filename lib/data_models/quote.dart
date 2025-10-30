import 'dart:convert';

// To parse JSON from Programming Quotes API
//
// final progQuote = progQuoteFromJson(jsonString);

ProgQuote progQuoteFromJson(String str) =>
    ProgQuote.fromJson(json.decode(str));

String progQuoteToJson(ProgQuote data) => json.encode(data.toJson());

class ProgQuote {
  String quote;
  String author;

  ProgQuote({
    required this.quote,
    required this.author,
  });

  factory ProgQuote.fromJson(Map<String, dynamic> json) => ProgQuote(
    quote: json["quote"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "quote": quote,
    "author": author,
  };
}
