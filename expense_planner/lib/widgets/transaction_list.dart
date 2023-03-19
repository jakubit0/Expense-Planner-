import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
