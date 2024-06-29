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
      margin: EdgeInsets.all(50),
      width: 600,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(children: [
        Text(time),
        Row(
          children: [
            Column(
              children: [Text(name), Text(number)],
            ),
            Column(
              children: [
                Container(
                  child: Text(status),
                ),
                const Text("GHS 500")
              ],
            )
          ],
        )
      ]),
    );
  }
}
