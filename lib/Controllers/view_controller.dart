import 'package:get/get.dart';

class ViewController extends GetxController{
  var showMenu = false.obs;
  var mobileDeviceWidth = 0.0.obs;
  var itemCount = 6.obs;
  var isViewMore = false.obs;
  var selectedChatListTile = (-1).obs;
  var isChatListTileSelected = false.obs;

  var giveNewMessageCount = 0.obs;
  var messageLimit = 0.obs;
  var newMessage = ''.obs;

  // Reactive list to store messages
  final RxList<Map<String, dynamic>> messages = <Map<String, dynamic>>[].obs;


  var selectedMenu = 'Dashboard'.obs;

  void selectMenu(String menu) {
    selectedMenu.value = menu;
    print('Slected Menu: $menu');
    // Add any additional logic needed when a menu is selected
  }

  @override
  void dispose() {
    super.dispose();
    ViewController().dispose();
    print('ViewController disposed');
  }
  
}