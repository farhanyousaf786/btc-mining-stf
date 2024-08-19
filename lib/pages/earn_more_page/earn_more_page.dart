import 'package:flutter/material.dart';

class EarnMorePage extends StatelessWidget {
  const EarnMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Earn More Page',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
