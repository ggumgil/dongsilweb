import 'package:flutter/material.dart';

import '../constant/spacings.dart';
import '../data/model/grid_item.dart';
import '../widgets/blog.dart';

const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              const MenuBar(),
              Row(
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
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Column(
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
              const Footer(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
