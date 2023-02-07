import 'package:dongsilweb/constant/spacings.dart';
import 'package:dongsilweb/widgets/blog.dart';
import 'package:dongsilweb/widgets/button.dart';
import 'package:dongsilweb/widgets/footer.dart';
import 'package:dongsilweb/widgets/menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/text.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MenuBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(padding: paddingLeft12),
                TextHeadline(text: '진행 중'),
              ],
            ),
            divider,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      'assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg',
                      fit: BoxFit.fitHeight),
                ),
                Expanded(
                  child: SizedBox(
                      child: Column(
                    children: [
                      const TextBodySecondary(text: '스냅바디(SNAPBODY)'),
                      const TextBody(
                          text: '좋은 사람들과 함께 하고 있는 다이어트 기록 앱 프로젝트입니다.'),
                      const TextBody(
                          text:
                              '간단하게 사진을 찍어서 내 몸이 점점 어떻게 변하는지 한 눈에 확인할 수 있게 하였습니다.'),
                      const TextBody(
                          text:
                              '찍은 사진을 혼자 보기는 아깝겠죠? 사진들을 모아 슬라이드쇼를 만들어 SNS에 공유할 수 있도록 하였습니다.'),
                      const TextBody(text: '자세한 내용을 알고 싶으시면 아래 버튼을 눌러주세요.'),
                      Container(
                        alignment: Alignment.centerRight,
                        child: ReadMoreButton(
                          onPressed: () {},
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
            divider,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      'assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg',
                      fit: BoxFit.fitHeight),
                ),
                Expanded(
                  child: SizedBox(
                      child: Column(
                    children: [
                      const TextBodySecondary(text: '똑똑의사(knockdoctor.care)'),
                      const TextBody(
                          text: '의사가 환자를 찾아가 진료하는 왕진이 여러분 곁에 있는 걸 알고 계신가요?'),
                      const TextBody(
                          text:
                              '거동이 불편하거나, 병원까지 가기 어려운 상황에 있는 환자들은 의사를 직접 만나 진료 받기 어려운 상황입니다.'),
                      const TextBody(
                          text:
                              '의사를 직접 만나 진료를 받을 수 있도록 정부에서 왕진 서비스 시범 사업을 진행 중에 있습니다.'),
                      const TextBody(
                          text:
                              '똑똑의사는 이런 분들이 쉽고 간편하게 왕진 예약을 할 수 있도록 서비스를 제공하고 있습니다.'),
                      const TextBody(text: '자세한 내용을 알고 싶으시면 아래 버튼을 눌러주세요.'),
                      Container(
                        alignment: Alignment.centerRight,
                        child: ReadMoreButton(
                          onPressed: () {
                            _launchUrl('https://knockdoctor.care/');
                          },
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),
            divider,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      'assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg',
                      fit: BoxFit.fitHeight),
                ),
                Expanded(
                  child: SizedBox(
                    child: Column(
                      children: [
                        const TextBodySecondary(text: '모비북(Mobibook)'),
                        const TextBody(text: '차량을 수리하거나 주유한 영수증을 버리고 계신가요?'),
                        const TextBody(
                            text:
                                '모비북에 영수증을 등록해보세요. 여러분의 차량 가치를 정확하게 판단받을 수 있습니다.'),
                        const TextBody(
                            text:
                                '또한, 영수증을 등록한 회원분에게 다양한 혜택을 지급해드리고 있습니다. 기회를 놓치지 마세요.'),
                        const TextBody(
                            text: '일본/베트남 진출을 위한 다국어 버전을 준비 중에 있습니다.'),
                        const TextBody(text: '자세한 내용을 알고 싶으시면 아래 버튼을 눌러주세요.'),
                        Container(
                          alignment: Alignment.centerRight,
                          child: ReadMoreButton(
                            onPressed: () {
                              _launchUrl('http://www.mobinoma.com/');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                height: 1,
                margin: const EdgeInsets.only(bottom: 30),
                color: const Color(0xFFEEEEEE)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(padding: paddingLeft12),
                TextHeadline(text: '끝'),
              ],
            ),
            divider,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      'assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg',
                      fit: BoxFit.fitHeight),
                ),
                Expanded(
                  child: SizedBox(
                      child: Column(
                    children: [
                      const TextBodySecondary(text: '롯데 테이블링 서비스'),
                      const TextBody(
                          text: '좋은 사람들과 함께 하고 있는 다이어트 기록 앱 프로젝트입니다.'),
                      const TextBody(
                          text:
                              '간단하게 사진을 찍어서 내 몸이 점점 어떻게 변하는지 한 눈에 확인할 수 있게 하였습니다.'),
                      const TextBody(
                          text:
                              '찍은 사진을 혼자 보기는 아깝겠죠? 사진들을 모아 슬라이드쇼를 만들어 SNS에 공유할 수 있도록 하였습니다.'),
                      const TextBody(text: '자세한 내용을 알고 싶으시면 아래 버튼을 눌러주세요.'),
                      Container(
                        alignment: Alignment.centerRight,
                        child: ReadMoreButton(
                          onPressed: () {
                            _launchUrl('https://www.lwt.co.kr/main/main.do');
                          },
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
            divider,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      'assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg',
                      fit: BoxFit.fitHeight),
                ),
                Expanded(
                  child: SizedBox(
                    child: Column(
                      children: [
                        const TextBodySecondary(text: '6.25 파명 해외 용사 사진첩'),
                        const TextBody(text: '6.25때 해외에서 파병되었던 군인들을 기억하시나요?'),
                        const TextBody(
                            text:
                                '알지도 못했던 머나먼 나라의 평화를 위해 희생했던 군인들을 한 번 생각해주세요.'),
                        const TextBody(
                            text: '한 번쯤 파병 용사들의 현재 모습을 보면 어떨까 생각해봅니다.'),
                        const TextBody(
                            text:
                                '저도 한 손 거들까 싶어 디지털 사진첩 앱을 만들어드리려 추진하였으나, 가족의 초상권 문제 제기로 인해 디지털화는 취소하게 되어 아쉬운 프로젝트입니다.'),
                        const TextBody(text: '자세한 내용을 알고 싶으시면 아래 버튼을 눌러주세요.'),
                        Container(
                          alignment: Alignment.centerRight,
                          child: ReadMoreButton(
                            onPressed: () {
                              _launchUrl(
                                  'https://www.instagram.com/projectsoldierkwv/');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            divider,
            const Footer(),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
