import 'package:get/get.dart';

class ViewController extends GetxController{
  var showMenu = false.obs;
  var mobileDeviceWidth = 0.0.obs;
  var itemCount = 6.obs;
  var isViewMore = false.obs;
  var selectedChatListTile = (-1).obs;
  var isChatListTileSelected = false.obs;

  var selectedMenu = 'Dashboard'.obs;

  void selectMenu(String menu) {
    selectedMenu.value = menu;
    print('Slected Menu: $menu');
    // Add any additional logic needed when a menu is selected
  }

  @override
  void dispose() {
    super.dispose();
    print('ViewController disposed');
  }
  
}