import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Osca Wilde'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Osca Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Osca Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} <${quote.author}>')).toList(),
      ),
    );
  }
}
