import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class DeviceTypeProvider with ChangeNotifier{
  bool _isMobile = false;
  bool get isMobile => _isMobile;

  DeviceTypeProvider({required BuildContext context}){
    if(MediaQuery.of(context).size.width<=600){
      _isMobile = true;
    }
    notifyListeners();
  }
}