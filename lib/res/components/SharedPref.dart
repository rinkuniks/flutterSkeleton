import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future saveUser(List<String> paramName, List<String> paramValue) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    List.generate(paramName.length, (index) {
      sp.setString(paramName[index], paramValue[index].toString());
    });
  }

  Future<String> getUser(String paramName) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? id = sp.getString(paramName) != null ?  sp.getString(paramName) : 'en';
    return id!;
  }

  Future<bool> deleteKey(String paramName) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();

    return sp.remove(paramName);
  }

  // Future<void> loggedUser() async {
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   await sp.clear();
  //   debugPrint("loggedOutLocalStorage");
  // }
}