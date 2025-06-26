import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    final isMobile = currentWidth < 600;
    final isTablet = currentWidth >= 600 && currentWidth < 1200;
    final isDesktop = currentWidth >= 1200;
    final isPortrait = currentHeight > currentWidth;
    final isLandscape = currentHeight < currentWidth;

    return Padding(
      
      padding: EdgeInsets.fromLTRB(isMobile ? 5 : 50, 0, isMobile ? 5 : 50, 0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title:
            Row(
              children: <Widget>[
                Icon(Icons.dashboard),
                Spacer(),
                Icon(Icons.message_outlined),
                Icon(Icons.notifications_outlined),
                Row(
                  children: <Widget>[
                    Icon(Icons.account_circle_outlined),
                    Text('Trade PRO'),
                    Icon(Icons.arrow_drop_down),
                  ],
                )
              ],
            ),
        ),
        body: Center(
          child: Text('User Dashboard'),
        ),
      ),
    );
  }
}