import 'package:ExpenseTracker/constants/icons.dart';
import 'package:ExpenseTracker/constants/text.dart';
import 'package:ExpenseTracker/constants/theme.dart';
import 'package:ExpenseTracker/data/transactions.dart';
import 'package:ExpenseTracker/data/user.dart';
import 'package:ExpenseTracker/widgets/avatar.dart';
import 'package:ExpenseTracker/widgets/buttons.dart';
import 'package:ExpenseTracker/widgets/appBar.dart';
import 'package:ExpenseTracker/widgets/transactionItem.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            renderAppBar(),
            Flexible(
              flex: 1,
              child: renderBody(),
            )
          ],
        ),
      ),
    );
  }

  Widget renderAppBar() {
    return MyAppBar(
      title: "Home",
      rightItems: [
        MyImageButton(
          imageIcon: CustomIcons.notification,
          onPressed: () => {},
          color: MyTheme.secondary,
        ),
      ],
      leftItems: [
        Avatar(
          image: User().avatar,
          onPressed: () => {},
        ),
      ],
    );
  }

  Widget renderBody() {
    return Container(
      color: MyTheme.background,
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          renderBalanceCard(),
          SizedBox(height: 40),
          renderBarChart(),
          SizedBox(height: 40),
          renderTransactionList(),
        ],
      ),
    );
  }

  Column renderBarChart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myLabel(text: "History".toUpperCase()),
        SizedBox(height: 20),
        Row(
          children: [
            renderBarChartItem(mounth: "jun", saving: 20000, spending: 16000),
            renderBarChartItem(mounth: "feb", saving: 15000, spending: 30000),
            renderBarChartItem(mounth: "mar", saving: 50, spending: 10),
            renderBarChartItem(mounth: "apr", saving: 50, spending: 10),
            renderBarChartItem(mounth: "may", saving: 50, spending: 10),
            renderBarChartItem(mounth: "jun", saving: 5651, spending: 3000),
            renderBarChartItem(mounth: "jul", saving: 516, spending: 232),
            renderBarChartItem(mounth: "aug", saving: 87120, spending: 54548),
            renderBarChartItem(mounth: "sep", saving: 2245, spending: 6541),
            renderBarChartItem(mounth: "oct", saving: 6000, spending: 8000),
            renderBarChartItem(mounth: "nov", saving: 50, spending: 10),
            renderBarChartItem(mounth: "dec", saving: 80000, spending: 30000),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 14,
                    height: 14,
                    color: MyTheme.saving,
                  ),
                ),
                SizedBox(width: 10),
                myLabel(text: "Saving".toUpperCase()),
              ],
            ),
            SizedBox(width: 30),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 14,
                    height: 14,
                    color: MyTheme.spending,
                  ),
                ),
                SizedBox(width: 10),
                myLabel(text: "Spending".toUpperCase()),
              ],
            ),
          ],
        )
      ],
    );
  }

  Flexible renderBarChartItem({
    @required String mounth,
    double saving = 0,
    double spending = 0,
  }) {
    return Flexible(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 180,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: saving == 0 && spending == 0
                    ? [
                        bar(0, MyTheme.background2),
                      ]
                    : [
                        bar((180 / (saving + spending)) * saving,
                            MyTheme.saving),
                        bar((180 / (saving + spending)) * spending,
                            MyTheme.spending),
                      ],
              ),
            ),
          ),
          SizedBox(height: 6),
          myLabel(text: mounth.toUpperCase(), size: 10)
        ],
      ),
    );
  }

  Widget bar(double height, Color color) {
    return Flexible(
      flex: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: Container(
          height: height,
          color: color,
        ),
      ),
    );
  }

  Widget renderBalanceCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          gradient: MyTheme.primaryGradient,
        ),
        height: 200,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myLabel(
                        text: "Total Balance",
                        color: Colors.white70,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "TK 35,530",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myLabel(
                                text: "Total Income",
                                color: Colors.white70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  "+ 1583TK",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myLabel(
                                text: "Total Spending",
                                color: Colors.white70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  "- 5,150TK",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: -80,
              bottom: -50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Container(
                  color: Colors.white10,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Container(
                  color: Colors.white10,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Container(
                  color: Colors.white10,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderTransactionList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myLabel(text: "TODAY’S TRANSACTIONS".toUpperCase()),
        SizedBox(height: 20),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: todaysTransactions.length,
          itemBuilder: (BuildContext context, int index) {
            return TransactionItem(transaction: todaysTransactions[index]);
          },
        )
      ],
    );
  }
}
