import 'package:flutter/material.dart';

import '../widgets/web_scaffold.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      body: Container(color: Colors.amber),
    );
  }
}
