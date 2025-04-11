import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;

  setLoadting(bool value) {
    _loading = value;

    notifyListeners();
  }

  void login(String email, String password) async {
    setLoadting(true);
    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        setLoadting(false);
        print('Sucessful');
      } else {
        setLoadting(false);
        print('fail');
      }
    } catch (e) {
      setLoadting(false);
      print(e.toString());
    }
  }
}
