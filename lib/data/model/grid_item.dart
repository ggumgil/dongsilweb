// ignore_for_file: public_member_api_docs, sort_constructors_first
class GridItem {
  String id;
  String title;
  String type;
  String publisher;
  DateTime issueDate;
  String img;

  GridItem({
    required this.id,
    required this.title,
    required this.type,
    required this.publisher,
    required this.issueDate,
    required this.img,
  });
}

List<GridItem> gridItemArray = [
  GridItem(
      id: '1',
      title: '샘플입니다',
      type: 'snapbody',
      publisher: '김덕현',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '2',
      title: '샘플입니다',
      type: 'snapbody',
      publisher: '김덕현',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '3',
      title: '샘플입니다',
      type: 'snapbody',
      publisher: '김덕현',
      issueDate: DateTime.now(),
      img: 'img'),
  GridItem(
      id: '4',
      title: '샘플입니다',
      type: 'snapbody',
      publisher: '김덕현',
      issueDate: DateTime.now(),
      img: 'img'),
];
