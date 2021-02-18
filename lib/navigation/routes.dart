import 'package:ExpenseTracker/screens/home.dart';
import 'package:ExpenseTracker/screens/notifications.dart';
import 'package:ExpenseTracker/screens/profile.dart';
import 'package:ExpenseTracker/screens/settings.dart';
import 'package:ExpenseTracker/screens/transactions.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoute(
      SailorRoute(
        name: "/home",
        defaultTransitionDuration: Duration(seconds: 0),
        builder: (context, args, params) {
          return HomeView();
        },
      ),
    );
    sailor.addRoute(
      SailorRoute(
        name: "/profile",
        defaultTransitionDuration: Duration(seconds: 0),
        builder: (context, args, params) {
          return ProfileView();
        },
      ),
    );
    sailor.addRoute(
      SailorRoute(
        name: "/transactions",
        defaultTransitionDuration: Duration(seconds: 0),
        builder: (context, args, params) {
          return TransactionsView();
        },
      ),
    );
    sailor.addRoute(
      SailorRoute(
        name: "/notifications",
        defaultTransitionDuration: Duration(seconds: 0),
        builder: (context, args, params) {
          return NotificationsView();
        },
      ),
    );
    sailor.addRoute(
      SailorRoute(
        name: "/settings",
        defaultTransitionDuration: Duration(milliseconds: 250),
        builder: (context, args, params) {
          return SettingsView();
        },
        defaultTransitions: [SailorTransition.slide_from_bottom],
      ),
    );
  }
}
