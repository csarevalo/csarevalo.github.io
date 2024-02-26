import 'package:flutter/material.dart';

import '../widgets/base_app_bar.dart';

/// Contact Me Page.
class ContactPage extends StatelessWidget {
  const ContactPage({
    super.key,
  });

  static const routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(),
      body: Text("Contact Me"),
    );
  }
}
