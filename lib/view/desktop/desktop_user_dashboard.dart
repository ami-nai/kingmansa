import 'package:flutter/material.dart';

class DesktopUserDashboard extends StatelessWidget {
  const DesktopUserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(134, 0, 0, 9),
        // title: Text('Bismillah'),
        title: Row(
          children: <Widget>[
            Icon(Icons.dashboard, color: Colors.white),
            Spacer(),
            Icon(Icons.message_outlined, color: Colors.white),
            Icon(Icons.notifications_none_outlined, color: Colors.white),
            Row(
              children: <Widget>[
                Icon(Icons.account_circle_outlined, color: Colors.white),
                Text('Trade PRO', style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Desktop User Dashboard'),
      ),
    );
  }
}