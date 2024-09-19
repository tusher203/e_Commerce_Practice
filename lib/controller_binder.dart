import 'package:e_commerce_ostad/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:get/get.dart';


class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainBottomNavController(),);
  }

}