// ignore_for_file: public_member_api_docs, sort_constructors_first
class GridItem {
  String id;
  String title;
  String tag;
  String publisher;
  String? contents;
  DateTime issueDate;
  String img;

  GridItem({
    required this.id,
    required this.title,
    required this.tag,
    required this.publisher,
    required this.issueDate,
    this.contents,
    required this.img,
  });
}

List<GridItem> gridItemArray = [
  GridItem(
      id: '1',
      title: '샘플입니다',
      tag: 'knockdoctor',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '2',
      title: '샘플입니다',
      tag: 'snapbody',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '3',
      title: '샘플입니다',
      tag: 'knockdoctor',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '4',
      title: '샘플입니다',
      tag: 'snapbody',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '5',
      title: '샘플입니다',
      tag: 'knockdoctor',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '6',
      title: '샘플입니다',
      tag: 'snapbody',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '7',
      title: '샘플입니다',
      tag: 'knockdoctor',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '8',
      title: '샘플입니다',
      tag: 'snapbody',
      publisher: '은소화',
      issueDate: DateTime.now(),
      img: 'img'),
];
