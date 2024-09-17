import 'package:agrilink/models/user.dart';
import 'package:agrilink/services/manage_http_response.dart';
import 'package:http/http.dart' as http;

class AuthController {
  Future<void> signUpUsers({
    required context,
    required String email,
    required String fullName,
    required String password,
  }) async {
    try {
      User user = User(
          id: '',
          name: fullName,
          email: email,
          password: password,
          address: '',
          state: '',
          city: '');
      http.Response response = await http.post(Uri.parse('$uri/api/signup'),
      body: user.toJson(),
      headers: <String, String>(
        "Content Type":'application/json; charset=UTF-8',
      )
      );
      manageHttpResponse(response: response, context: context, onSuccess: () {
        showSnackBar(context, 'Account has been created by you');
      });
    } catch (e) {}
  }



//signin
 Future<void> signInUser({
    required context,
    required String email,
    required String password,
  }) async {
    try {
     {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        manageHttpResponse(response: response, context: context, onSuccess: () {
        showSnackBar(context, 'Logged in');
      );

}

    } catch (e) {
      print("Error:"$e);
    }
  }