import 'package:flutter/material.dart';

import '../widgets/web_scaffold.dart';

class NotionPage extends StatelessWidget {
  const NotionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      body: Container(color: Colors.green),
    );
  }
}
