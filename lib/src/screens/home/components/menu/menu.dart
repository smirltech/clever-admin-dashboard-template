import 'package:clever_dashboard_template/src/screens/home/components/menu/menu_components/menu_tile.dart';
import 'package:clever_dashboard_template/src/screens/home/components/menu/menu_components/menu_tile_switch.dart';
import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:clever_dashboard_template/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: drawerWidth,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: purple, borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Typicons.flash,
                    color: white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "clever",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, color: purple),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            MenuTile(
              title: "Projects",
              icon: Icons.mail,
              onPressed: () {
                print("Projects pressed");
              },
            ),
            const MenuTile(title: "Tasks", icon: FontAwesome.tasks),
            const MenuTile(title: "File", icon: FontAwesome5.file_alt),
            const MenuTile(title: "Integration", icon: Icons.filter_b_and_w),
            const MenuTile(title: "User", icon: FontAwesome5.users),
            const MenuTile(
              title: "Settings",
              icon: FontAwesome.cog,
            ),
            const MenuTile(
              title: "Authentication",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "RESOURCES",
              style: TextStyle(fontWeight: FontWeight.bold, color: grey),
            ),
            const SizedBox(
              height: 10,
            ),
            const MenuTile(
              title: "Documentation",
              icon: Icons.developer_mode,
              showTrailing: false,
            ),
            const MenuTile(
              title: "Changelog",
              icon: Icons.filter_none,
              trailing: "v 1.0.0",
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: blue, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/profiles/baby.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Tahlia Mooney",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: white),
                    ),
                  ),
                  Icon(
                    Icons.unfold_more,
                    color: white,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MenuTileSwitch(
              title: "Dark mode",
              icon: FontAwesome.moon,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
