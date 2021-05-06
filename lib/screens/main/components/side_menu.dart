import 'package:admin/screens/tasks/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              title: "Dashboard",
              onTap: () {},
              svgScr: "assets/icons/menu_dashbord.svg",
            ),
            DrawerListTile(
              title: "Transactions",
              onTap: () {},
              svgScr: "assets/icons/menu_tran.svg",
            ),
            DrawerListTile(
              title: "Task",
              onTap: () {
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (context) => TaskScreen());
                Navigator.push(context, route);
              },
              svgScr: "assets/icons/menu_task.svg",
            ),
            DrawerListTile(
              title: "Documents",
              onTap: () {},
              svgScr: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              title: "Store",
              onTap: () {},
              svgScr: "assets/icons/menu_store.svg",
            ),
            DrawerListTile(
              title: "Notification",
              onTap: () {},
              svgScr: "assets/icons/menu_notification.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgScr,
    @required this.onTap,
  }) : super(key: key);
  final String title, svgScr;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgScr,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
