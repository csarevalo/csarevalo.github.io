import 'package:flutter/material.dart';

import '../widgets/base_app_bar.dart';

/// Projects Page.
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
  });

  static const routeName = '/projects';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(),
      body: Text("Projects"),
    );
  }
}
