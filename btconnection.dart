import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(Page1Screen());

class Page1Screen extends StatelessWidget {
  /// Creates a [Page1Screen].
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('QUIZZIE')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/page7'),
                child: const Text('Colorblindness test Game'),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: () => context.go('/page666'),
                child: const Text('Quiz Game'),
              ),
              Padding(padding: EdgeInsets.all(10.0)),

              ElevatedButton(
                onPressed: () => context.go('/quiz2'),
                child: const Text('Number Guesser'),
              ),
            ],
          ),
        ),
      );
}
