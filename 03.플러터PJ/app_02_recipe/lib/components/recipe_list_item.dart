// 황금 레시피 리스트 아이템 클래스 ///////

import 'package:flutter/material.dart';

// 두개의 값을 전달 받아 처리한다
// 1. 이미지 이름 / 2. 타이틀
class RecipeListItem extends StatelessWidget {
  // 클래스 멤버속성 만들기
  final String imageName;
  final String title;
  // 클래스 호출할 때 생성시 이 값을 전달해줌

  // 맴버 속성을 세팅핟록 생성자 메서드를 변경한다
  // key값 전달은 기본이므로 포함하여 변경한다.
  const RecipeListItem(this.imageName, this.title, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          // 1. 이미지 : 맴버변수 imageName 사용
          // 비율설정위젯 - AspectRatio
          AspectRatio(
            aspectRatio: 2 / 1,
            // 사각 잘라내기 위젯 - ClipRRect
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/$imageName.jpeg",
                // 이미지 확장 채우기
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 사이 간격
          SizedBox(
            height: 10,
          ),
          // 2. 텍스트 : 맴버변수 title사용
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // 3. 레시피 소개글
          Text(
            "당신은 당신이 직접 만든 $title를 가지고 계신가요? 만약 없다면 여기 쉽고 훌륭한 $title를 보고 따라해 보세요 틀림없이 좋은 결과를 만나실겁니다.",
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
