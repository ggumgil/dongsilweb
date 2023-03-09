import 'package:dongsilweb/common/constant/enum.dart';
import 'package:dongsilweb/data/model/blog_model.dart';
import 'package:dongsilweb/gen/assets.gen.dart';

import 'package:dongsilweb/widgets/carousel.dart';
import 'package:dongsilweb/widgets/main_container.dart';
import 'package:flutter/material.dart';

import '../common/constant/colors.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    super.key,
  });

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  Map<String, List<Blog>> blogs = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      container: LayoutBuilder(
        builder: (context, constraints) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 4,
              child: _SideBar(blogs: blogs),
            ),
            const Flexible(
              flex: 10,
              child: _Contents(),
            ),
            SizedBox(
              height: constraints.maxHeight,
              child: const VerticalDivider(),
            ),
            const Flexible(
              flex: 4,
              child: _SideList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SideList extends StatelessWidget {
  const _SideList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: List.generate(
          10,
          (index) => ListTile(
            key: UniqueKey(),
            leading: const Icon(Icons.abc),
            hoverColor: Colors.red,
            title: Text('바람이 불어요. $index'),
            trailing: const Icon(Icons.more_horiz_rounded),
          ),
        ),
      ),
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Carousel(
        boxFit: BoxFit.cover,
        dotColor: primaryColor.withOpacity(0.8),
        dotSize: 5.5,
        dotSpacing: 16.0,
        dotBgColor: Colors.transparent,
        showIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white.withOpacity(0.9),
        overlayShadowSize: 0.9,
        images: [
          Assets.images.coffeePaperclipsPencilAngledBwW1080.image(),
          Assets.images.iphoneCactusTeaOverheadBwW1080.image(),
          Assets.images.joyNoteCoffeeEyeglassesOverheadBwW1080.image(),
        ],
      ),
    );
  }
}

class _SideBar extends StatelessWidget {
  const _SideBar({
    Key? key,
    required this.blogs,
  }) : super(key: key);

  final Map<String, List<Blog>> blogs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: List.generate(
          ContentCategory.values.length,
          (index) => ListTile(
            key: UniqueKey(),
            leading: ContentCategory.values[index].icon,
            hoverColor: Colors.red,
            title: Text(ContentCategory.values[index].categoryName),
            trailing: Text('(${blogs[ContentCategory.values[index].name]?.length})'),
          ),
        ),
      ),
    );
  }
}
