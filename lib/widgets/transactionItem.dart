import 'package:ExpenseTracker/constants/theme.dart';
import 'package:ExpenseTracker/data/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem({
    @required this.transaction,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.transaction.title,
                  style: TextStyle(
                    color: MyTheme.text1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  transaction.date.day == DateTime.now().day
                      ? "Today " + DateFormat('H:mm a').format(transaction.date)
                      : DateFormat('MMM dd yyyy, H:mm a')
                          .format(transaction.date),
                  style: TextStyle(
                    color: MyTheme.text2,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Text(
            (transaction.spended ? "- " : "+ ") +
                NumberFormat("#,##0.00", "en_US").format(transaction.amount) +
                " TK",
            style: TextStyle(
              color: transaction.spended ? MyTheme.spending : MyTheme.saving,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
