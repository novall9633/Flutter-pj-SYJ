// 황금 레시피 페이지홈 클래스 ////

import 'package:flutter/material.dart';
// 레시피 컴포넌트 불러오기 : 타이틀 , 메뉴, 리스트아이템
import "package:app_02_recipe/components/recipe_title.dart";
import "package:app_02_recipe/components/recipe_menu.dart";
import "package:app_02_recipe/components/recipe_list_item.dart";
// 쿠퍼티노 아이콘 사용 위해 쿠퍼티노 앱 추가
import 'package:flutter/cupertino.dart';

class RecipePage extends StatelessWidget {
  // 생성자 메서드에서 key를 받아서 부모 속성을 셋팅함
  // key는 이미 만들어진 부모 위젯에서 받는 기본값
  // 이 값은 우리가 넘겨주지 않아도 셋팅은 되어야 한다
  const RecipePage({Key? key}) : super(key: key);
  // Key? key -> Key 클래스형 변수 key가 null 이여도 그 값을 null 처리하지 않고 "null" 문자열로 처리해줌
  // -> 널 세이프티(null safety)라고 한다(물음표 사용)

  // build 메서드를 재정의함
  @override
  Widget build(BuildContext context) {
    // 가장 바깥쪽 레이아웃 Scaffold 위젯으로 시작
    return Scaffold(
      // 1. 전체 배경색 설정
      backgroundColor: Color.fromARGB(255, 222, 32, 32),
      // 2. 앱 바 클래스 호출하기
      appBar: _buildRecipeAppBar(),
      // 3. body 구현하기
      body: Column(
        children: [
          // 레시피 페이지 전체 타이틀
          RecipeTitle(),
        ],
        ),
    );
  }
}

// 앱 바 클래스 만들기 ///////////////
// 리턴형은 AppBar
// 앱바 메서드 이름은 주로 (언더바)로 시작한다
AppBar _buildRecipeAppBar() {
  return AppBar(
    // 앱 바 배경색
    backgroundColor: Color.fromARGB(255, 215, 215, 215),
    // elevation속성 :  앱 바 그림자 효과 조정속성
    elevation: 1.0,
    // actions속성 : 앱 바 컨텐츠 파트[리스트 형]
    actions: [
      // 아이콘 위젯 - Icon
      Icon(
        // 아이콘 옵션중 쿠퍼티노가 유명함
        // 주의 : 쿠퍼티노앱 상단 import 추가
        CupertinoIcons.search,
        color: Colors.black,
      ),
      SizedBox(
        width: 15,
      ),// 사이간격 박스
      Icon(
        CupertinoIcons.heart,
        color: Colors.red,
      )
    ],
  );
} ///////// _buildRecipeAppBar 메서드 /////////////
// 앱 바는 앱 최상단 구역을 차지하며
// 구성요소로는 
// 1. leading - 앱 바 상단왼쪽 끝 파트
// 2. title - 앱 바 타이틀 파트
// 3. actions - 앱 바 컨텐츠파트
// 4. flexibleSpace - 앱 바 하단파트 위 공간
// -> SafeArea위젯에서 이 공백을 자동 조정함
// 5. bottom - 앱 바 하단파트
