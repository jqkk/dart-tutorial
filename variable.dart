void main() {
  final currentDate = DateTime.now(); //runtime
  const cafeName = 'Coding Cafe'; //build time
  var drinkName = '아이스 바닐라 라떼';
  dynamic drinkPrice = '4500';
  drinkPrice = 5500;
  int studyTime = 2;
  print(
      '${currentDate.year}년 ${currentDate.month}월 ${currentDate.day}일에 방문한 ${cafeName}에서 ${drinkName}를 ${drinkPrice}원에 구매하여 ${studyTime}시간 동안 카공 하는 중입니다.');
}
