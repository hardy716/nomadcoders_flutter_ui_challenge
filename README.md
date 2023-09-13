|0. nomadcoder_flutter_ui_challenge [🔻](https://github.com/hardy716/nomadcoders_flutter_ui_challenge/blob/main/README.md)|
|---|

|1. 코드 챌린지 [🔻](https://github.com/hardy716/nomadcoders_flutter_ui_challenge/blob/main/README.md#-코드-챌린지)|
|---|

<br></br>

## 🙌🏻 nomadcoder_flutter_ui_challenge

Flutter로 웹툰 앱 만들기 - #3 UI CHALLENGE 강의를 기반으로 진행했습니다.

노마드 코더와 함께 플러터 2주 챌린지에 도전하고 있습니다.

<br></br>

## 💪🏻 코드 챌린지

1. `Transform.translate` 부분을 CurrencyCard 커스텀 위젯 안에다 담기
2. `ClipPath` 위젯을 사용하여 우측 상단 모서리만 non-circular하도록 만들기

```dart
class CurencyCard extends StatelessWidget {
  ~ 생략 ~

  final int order;

  final double offsetY = -30.0;

  const CurencyCard({
    ~ 생략 ~
    required this.order,
  });

  ~ 생략 ~

  Offset calculateOffsetY(int orderNum) {
    double newOffsetY = offsetY * orderNum;
  
    return Offset(0.0, newOffsetY);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: calculateOffsetY(order),
      child: ClipPath(
        clipper: DiagonalClipper(),
        child: Container(

          ~ 생략 ~

        ),
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 30, 0)
      ..lineTo(size.width, 30)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
```

완성된 결과는 아래와 같습니다.

<img src="https://github.com/hardy716/nomadcoders_flutter_ui_challenge/assets/101140679/e0f6be76-492c-4f70-9d35-d98497edba4b" width="300" height="650" hspace="1"> 
