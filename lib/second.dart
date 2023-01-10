import 'package:flutter/material.dart';

import 'constant/style.dart';
import 'constant/text.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({
    super.key,
  });

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        actions: [
          TextButton(
            onPressed: (() {}),
            child: const Text('블로그', style: subTitle),
          ),
          TextButton(
            onPressed: (() {}),
            child: const Text('좋아요', style: subTitle),
          ),
        ],
        title: Text(texts['title']!, style: title),
      ),
      body: Row(
        children: [
          Container(
            width: 300,
            color: Colors.blue,
            child: Center(
                child: TextButton(
              child: const Text(
                '눌러주세요',
                style: title,
              ),
              onPressed: () {},
            )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.topLeft,
                color: Colors.amber,
                child: Text('중국이 한국 국민에게 당분간 중국행 단기 비자 발급을 중단한다고 밝혔습니다. '
                    '이는 한국의 중국발 입국자 방역 강화 조치에 대한 보복 조치로 보입니다. '
                    '주한중국대사관은 오늘 오후 위챗 공식 계정에 올린 글을 통해 \"오늘부터 주한중국대사관과 총영사관은 방문과 상업무역, 관광, 의료, 일반 개인사정을 포함한 한국 국민의 중국 방문 단기비자 발급을 중단한다\"고 밝혔습니다. 대사관은 \"이는 한국이 중국에 대한 차별적인 입국 제한 조치 취소 상황에 따라 조정할 예정\"이라고 덧붙였습니다. 최근 한국 정부는 중국 내 급격한 코로나19 감염 확산세 등을 고려해 중국발 한국행 단기 비자 발급과 항공편 추가 증편을 제한하고, 중국발 입국자에 대해 입국 전후 코로나19 검사를 의무화했습니다. 이에 대해 중국 정부는 최근 외교 대변인이 정례 브리핑을 할 때마다 한미일 등 각국이 취한 중국발 입국자 대상 방역 강화 조치에 반발하며 대등한 상응 조치를 취하겠다고 경고한 바 있습니다. 또 전날 친강 중국 신임 외교부장은 박진 외교부 장관과의 첫 통화에서 중국발 입국자에 대한 한국의 방역 강화 조치에 우려를 표했습니다. 이에 대해 박진 장관은 한국 측 조치가 과학적 근거에 따라 취해졌다는 점을 친 부장에 설명했다고 외교부는 밝힌 바 있습니다.'
                    '출처 : MBC 뉴스 https://imnews.imbc.com/news/2023/world/article/6444295_36133.html ')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
