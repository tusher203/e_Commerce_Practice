import 'package:get/get.dart';

class MainBottomNavController extends GetxController{
  int _selectedIndex=0;
  int get currentIndex => _selectedIndex;
void changeIndex(int index){
  ///_selectedIndex hobe index er soman
  if(_selectedIndex==index){
    return;
  } else{
    ///_selectedIndex er man index hobe
    _selectedIndex=index;
    update();
  }
}
void backTohome(){
  changeIndex(0);
}
}