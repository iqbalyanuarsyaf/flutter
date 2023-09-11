import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;
  RxInt _y=0.obs;
  RxInt get y=>_y;
  RxInt _z=0.obs;
  RxInt get z=>_z;

  void sumXY(){
    _z.value=x+_y.value;
  }
  void _increaseX(){
    _x++;

    update();
    print(_x);

  }
  void decreaseX(){

    _x--;

    update();
    print(-x);

  }
  void _increaseX(){
    _x++;

    update();
    print(_x);

  }
  void _increaseX(){
    _y.value++;
    print(_y);

  }
}