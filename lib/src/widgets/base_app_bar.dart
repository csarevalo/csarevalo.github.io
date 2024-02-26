import 'package:flutter/material.dart';
import 'package:web_portfolio/src/pages/about.dart';
import 'package:web_portfolio/src/pages/contact.dart';
import 'package:web_portfolio/src/pages/projects.dart';
import 'package:web_portfolio/src/settings/settings_view.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    // required this.routeName,
  });

  // final String routeName;
  // final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.sunny_snowing),
        onPressed: () {
          // Navigate to the settings page. If the user leaves and returns
          // to the app after it has been killed while running in the
          // background, the navigation stack is restored.
          Navigator.restorablePushNamed(context, SettingsView.routeName);
        },
      ),
      title: InkWell(
        onTap: () => Navigator.restorablePushNamed(context, HomePage.routeName),
        child: const Text("Cristian Arevalo"),
      ),
      actions: [
        Center(
          child: InkWell(
            onTap: () =>
                Navigator.restorablePushNamed(context, HomePage.routeName),
            child: const Text("About"),
          ),
        ),
        const SizedBox(width: 15),
        Center(
          child: InkWell(
            onTap: () =>
                Navigator.restorablePushNamed(context, ProjectsPage.routeName),
            child: const Text("Projects"),
          ),
        ),
        const SizedBox(width: 15),
        Center(
          child: InkWell(
            onTap: () =>
                Navigator.restorablePushNamed(context, ContactPage.routeName),
            child: const Text("Contact"),
          ),
        ),
        const SizedBox(width: 15),
        IconButton(
          icon: const Icon(Icons.lightbulb_outline_rounded),
          onPressed: () {
            //TODO: Make this a fun fact / inspirational quote generator!
            Navigator.restorablePushNamed(context, HomePage.routeName);
          },
        ),
        const SizedBox(width: 15),
      ],
      // bottom: AppBar(title: const Text("Hello World")),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
