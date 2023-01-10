import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/web_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 300,
                  height: 500,
                  child: Card(
                    color: Colors.amber[300],
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Center(child: Text('hi')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 500,
                    child: Card(
                      color: Colors.red[300],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Center(child: Text('hi')),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Card(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(child: Text('hi')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 300,
                    child: Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Center(child: Text('hi')),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 300,
                  child: const Card(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(child: Text('hi')),
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 300,
                    child: Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Center(child: Text('hi')),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 800,
                  height: 300,
                  child: Card(
                    elevation: 12,
                    color: Colors.amber[100],
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Center(child: Text('hi')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 300,
                    child: Card(
                      color: Colors.red[100],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Center(child: Text('hi')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
