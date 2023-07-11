
import 'package:get/get.dart';


class BottomC extends GetxController {
  
   var currentIndex = 0.obs ;

 void changeIndex(int index){
    currentIndex.value= index;
    update();
    
 }
  
 

  


}