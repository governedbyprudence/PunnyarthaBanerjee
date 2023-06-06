import 'package:flutter/cupertino.dart';
enum MenuOption{
  home,
  about,
  skills,
  projects,
  contact
}
class MenuOptionProvider with ChangeNotifier{
  late MenuOption _current;
  MenuOption get currentOption => _current;
  MenuOptionProvider(){
    _current = MenuOption.home;
  }
  void change(MenuOption option){
    _current = option;
    notifyListeners();
  }
}