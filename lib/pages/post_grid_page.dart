import 'package:flutter/material.dart';

import '../data/model/grid_item.dart';
import '../widgets/blog.dart';

const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class GridPostPage extends StatelessWidget {
  const GridPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              const MenuBar(),
              const Text('필터 추가'),
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
                  gridItemArray.length,
                  (index) => GridTile(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Column(
                        children: [
                          Text(gridItemArray[index].title),
                          Text(gridItemArray[index].id),
                          Text(gridItemArray[index].img),
                          Text(gridItemArray[index].publisher),
                          Text(gridItemArray[index].type),
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
}
