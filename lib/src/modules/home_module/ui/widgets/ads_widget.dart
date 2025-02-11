import 'package:flutter/material.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Placeholder(
          fallbackHeight: 100,
        ),
        Center(
            child: Text(
          "Anúncios",
          style: TextStyle(fontSize: 24),
        )),
      ],
    );
  }
}
