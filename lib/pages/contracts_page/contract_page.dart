import 'package:flutter/material.dart';

class ContractPage extends StatelessWidget {
  const ContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Contracts Page',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
