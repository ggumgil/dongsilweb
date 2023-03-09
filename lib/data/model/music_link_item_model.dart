// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

List<MusicLinkItem> musicLinkItems = [
  MusicLinkItem(
    id: 1,
    maker: '노마드코더',
    title: '코딩할때 듣기 좋은 Lofi Mix 🎵 성곽뷰 • 3-Hour Study With Me 🌸 Seoul',
    musicStyle: MusicStyle.jazz,
    url: 'https://youtu.be/fhkQcCmkt6s',
  ),
  MusicLinkItem(
    id: 2,
    maker: 'Lofi 코딩',
    title: '[ 𝑷𝒍𝒂𝒚𝒍𝒊𝒔𝒕 ] 코딩할때 듣기 좋은 노래 | 3 hour playlist | Lofi hip hop mix ~ jazzhop ~ relax beats',
    musicStyle: MusicStyle.jazz,
    url: 'https://youtu.be/Xc1Le3CSdrM',
  ),
  MusicLinkItem(
    id: 3,
    maker: 'Monkey BGM',
    title: '☕️ 뭐지? 나 스타벅스 언제왔지? 🤭 l 중간 광고 없는❗️ 매장 음악, 카페 음악 l starbucks jazz piano music',
    musicStyle: MusicStyle.jazz,
    url: 'https://youtu.be/BcbmFxbdsJ0',
  ),
  MusicLinkItem(
    id: 4,
    maker: 'Cafe Music BGM channel',
    title: '재즈 보사 음악 - 기악 을 완화',
    musicStyle: MusicStyle.jazz,
    url: 'https://youtu.be/K2Q6YO3Ez44',
  ),
];

class MusicLinkItem {
  int id;
  String url;
  String maker;
  String title;
  MusicStyle musicStyle;

  MusicLinkItem({
    required this.id,
    required this.url,
    required this.maker,
    required this.title,
    required this.musicStyle,
  });

  MusicLinkItem copyWith({
    int? id,
    String? url,
    String? maker,
    String? title,
    MusicStyle? musicStyle,
  }) {
    return MusicLinkItem(
      id: id ?? this.id,
      url: url ?? this.url,
      maker: maker ?? this.maker,
      title: title ?? this.title,
      musicStyle: musicStyle ?? this.musicStyle,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'url': url,
      'maker': maker,
      'title': title,
      'musicStyle': musicStyle.name,
    };
  }

  factory MusicLinkItem.fromMap(Map<String, dynamic> map) {
    return MusicLinkItem(
      id: map['id'] as int,
      url: map['url'] as String,
      maker: map['maker'] as String,
      title: map['title'] as String,
      musicStyle: MusicStyle.values.byName(map['musicStyle']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MusicLinkItem.fromJson(String source) => MusicLinkItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MusicLinkItem(id: $id, url: $url, maker: $maker, title: $title, musicStyle: $musicStyle)';
  }

  @override
  bool operator ==(covariant MusicLinkItem other) {
    if (identical(this, other)) return true;

    return other.id == id && other.url == url && other.maker == maker && other.title == title && other.musicStyle == musicStyle;
  }

  @override
  int get hashCode {
    return id.hashCode ^ url.hashCode ^ maker.hashCode ^ title.hashCode ^ musicStyle.hashCode;
  }
}

enum MusicStyle {
  jazz,
  classic,
  kpop,
  natural,
}
