import 'package:dongsilweb/widgets/button.dart';
import 'package:dongsilweb/widgets/main_container.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/spacings.dart';
import '../data/model/grid_item.dart';

class GridPostPage extends StatefulWidget {
  const GridPostPage({Key? key}) : super(key: key);

  @override
  State<GridPostPage> createState() => _GridPostPageState();
}

class _GridPostPageState extends State<GridPostPage> {
  late List<GridItem> gridItems;

  @override
  void initState() {
    gridItems = gridItemArray;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      container: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TagButton(
                    onPressed: () {
                      _setGridItems(null);
                    },
                    title: '전체',
                  ),
                  const Padding(
                    padding: paddingLeft12,
                  ),
                  TagButton(
                    onPressed: () {
                      _setGridItems('snapbody');
                    },
                    title: '스냅바디',
                  ),
                  const Padding(
                    padding: paddingLeft12,
                  ),
                  TagButton(
                    onPressed: () {
                      _setGridItems('knockdoctor');
                    },
                    title: '똑똑의사',
                  ),
                  const Padding(
                    padding: paddingLeft12,
                  ),
                  TagButton(
                    onPressed: () {
                      _setGridItems('flutter');
                    },
                    title: 'Flutter',
                  )
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 17.0,
                childAspectRatio: 1,
                crossAxisCount: 4,
                primary: false,
                children: List.generate(
                  gridItems.length,
                  (index) => GridTile(
                    child: Container(
                      decoration: BoxDecoration(
                          color: randomColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(gridItems[index].title),
                          Text(gridItems[index].id),
                          Text(gridItems[index].img),
                          Text(gridItems[index].publisher),
                          Text(gridItems[index].tag),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _setGridItems(String? tag) {
    setState(() {
      tag == null
          ? gridItems = gridItemArray
          : gridItems =
              gridItemArray.where((element) => element.tag == tag).toList();
    });
  }
}
