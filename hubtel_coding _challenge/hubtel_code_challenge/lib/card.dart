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
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(20),
      width: 600,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(children: [
        Row(
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer()
          ],
        ),
        Row(
          children: [
            Column(
              children: [Text(name), Text(number)],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(status),
                ),
                const Text("GHS 500")
              ],
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            Text(description),
          ],
        )
      ]),
    );
  }
}
