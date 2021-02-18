class Transaction {
  String title;
  DateTime date;
  double amount;
  bool spended;
  Transaction({this.title, this.amount, this.spended}) {
    this.date = new DateTime.now();
  }
}

final List<Transaction> todaysTransactions = <Transaction>[
  new Transaction(
    title: "Bought Books",
    amount: 2000,
    spended: true,
  ),
  new Transaction(
    title: "Got Money from student",
    amount: 5000.59,
    spended: false,
  ),
  new Transaction(
    title: "Got Money from client",
    amount: 10000,
    spended: false,
  ),
  new Transaction(
    title: "Bought breakfast",
    amount: 600,
    spended: true,
  ),
  new Transaction(
    title: "Bought t-sharts",
    amount: 1500,
    spended: true,
  ),
];
