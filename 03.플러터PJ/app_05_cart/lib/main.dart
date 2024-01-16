import 'package:app_05_cart/components/cart_detail.dart';
import 'package:app_05_cart/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 배너 숨김
      debugShowCheckedModeBanner: false,
      // 앱 테마설정
      theme: theme(),
      // 전체 바디에 해당하는 home속성
      home: CartPage(),
    );
  }
}//////////////// MyApp 클래스 //////////

// 페이지를 구성하는 클래스 ////
/// cartPage 클래스 ///////
class CartPage extends StatelessWidget {
  const CartPage({super.key});
  

  // 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 스캐폴드 위젯 안에 구성함
    return Scaffold(
      // 1. 앱바
      appBar: _buildCartAppBar(),
      // 2. 본문 출력 파트 바디
      body: Column(
        children: [
          // 카트 페이지 상세구성 클래스 호출
          CartDetail()
        ],
      ),
    );
  } //////////build //////////

  // 앱바를 구성하는 메서드 : _buildCartAppBar()
  AppBar _buildCartAppBar(){
    return AppBar(
      //// 왼쪽 시작부분은 leading -> 이끄는 곳
      //왼쪽 이동 화살표 아이콘 넣기
      leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back)),
      // 실제 기능을 넣는 곳 : actions
      // 기본정렬 오른쪽 끝에서 부터 나옴(카트모양 아이콘)
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        SizedBox(width: 16)
      ],
    );
  }///////////////////_buildCartAppBar 메서드 ///////////////////
}//////////////CartPage /////////////////

