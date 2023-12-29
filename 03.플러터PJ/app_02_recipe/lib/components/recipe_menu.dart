// 황금레시피 페이지 메뉴 클리스 /////
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          // 박스형 메뉴 생성 메서드 호출
          _buildMenuItem(Icons.food_bank, 'All'),
          Spacer(),
          _buildMenuItem(Icons.emoji_food_beverage, 'Coffee'),
          Spacer(),
          _buildMenuItem(Icons.fastfood, 'Burger'),
          Spacer(),
          _buildMenuItem(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }
}

// 메뉴구성 위젯을 리턴하는 메서드
// 하위 메ㅓ드 이므로 언더바로 시작하는 이름사용
// 각 메뉴별 변경요소 전달값으로 받아서 처리
// 전달변수: 1. 아이콘 / 2. 텍스트
Widget _buildMenuItem(IconData mIcon, String text) {
  // 박스를 구성하는 Container 위젯!
  // 박스는 크기를 가진다 따라서 width,height 속성이 필수
  return Container(
    width: 70,
    height: 80,
    // 박스 세부옵션 설정 - decoration
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        // 보더라운드 속성
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          // 그라데이션 색상 지정
          colors: [
            Color.fromARGB(255, 255, 248, 121),
            Color.fromARGB(255, 255, 215, 0),
          ],
          // 각 색상이 어디까지 변화할지 지정(0.0~1.0 )
          stops: [0.2, 0.6],
          // 그라데이션 시작 위치, 끝 위치 지정
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),

    // 3. 박스 하위요소 속성 : 단일 요소 -> child
    child: Column(
        // 박스 세로정렬 중앙
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 3-1. 아이콘
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          // 내가 원하는 크기만큼 사이간격주는
          // 방법은 SizedBox(Width/height)
          SizedBox(
            height: 3,
          ),
          // 3-2. 글자
          Text(
            text,
            style: TextStyle(
                color: Colors.red.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )
        ]),
  );
}
