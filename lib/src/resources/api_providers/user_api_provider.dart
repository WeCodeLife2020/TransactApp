import 'package:app_template/src/models/login_request_model.dart';
import 'package:app_template/src/models/login_response_model.dart';
import 'package:app_template/src/models/state.dart';
import 'package:app_template/src/utils/object_factory.dart';

class UserApiProvider {
  Future<State?> loginCall(LoginRequest loginRequest) async {
    final response = await ObjectFactory().apiClient.loginRequest(loginRequest);
    // print(response.data['userInfo']['userId']);
    // print(response.data['userInfo']['email']);
    // print(response.data['tokenInfo']);
    // print(response.data['tokenInfo']['access_token']);

    // print(response.toString());
    // print(response.data['tokenInfo']['userId']);
    // print(response.data['tokenInfo']);
    print(response.statusCode);

    if (response.statusCode == 200) {
    
      return State<LoginResponse>.success(
          LoginResponse.fromJson(response.data));
    } else
       return State<String>.error("errror");
  }
}
