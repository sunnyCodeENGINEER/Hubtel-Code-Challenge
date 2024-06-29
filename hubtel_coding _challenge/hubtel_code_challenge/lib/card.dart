import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final name;
  final icon;
  final status;
  final time = '14:45PM';
  final amount = '500';
  final description = 'Cool your heart wai';
  final number = "024 123 4567";

  const TransactionCard({
    super.key,
    this.name,
    this.icon,
    this.status,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}
