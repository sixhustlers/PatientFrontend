import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //const LoginScreen({Key? key}) : super(key: key);

 // Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 2250);

  Future<String?> _loginUser(LoginData data) async{
    String?name;
    return name;

    }


  Future<String?> _signupUser(SignupData data) async{
    String?name;
    return name;
  }

  Future<String?> _recoverPassword(String name) async{
    String?name;
    return name;
  }

  Future<String?> _signupConfirm(String error, LoginData data)async {
    String?name;
    return name;
  }
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(onLogin:  (loginData) {
      debugPrint('Login info');
      debugPrint('Name: ${loginData.name}');
      debugPrint('Password: ${loginData.password}');
      return _loginUser(loginData);
    }, onRecoverPassword:(name) {
      debugPrint('Recover password info');
      debugPrint('Name: $name');
      return _recoverPassword(name);
      // Show new password dialog
    },
    onSignup: (signupData) {
    debugPrint('Signup info');
    debugPrint('Name: ${signupData.name}');
    debugPrint('Password: ${signupData.password}');

    signupData.additionalSignupData?.forEach((key, value) {
    debugPrint('$key: $value');
    });},
      title: "UHI",
      userType: LoginUserType.phone,
      theme: LoginTheme(cardTheme: const CardTheme(
        color:Colors.white,
        ),accentColor: Colors.white),
      userValidator: (value) {

        if (value != null ||
            value!.length < 10 ) {
          return "This isn't a valid phone number";
        }
        return null;
      },
      passwordValidator: (value) {
        if (value!.isEmpty) {
          return 'Password is empty';
        }
        else if(value.length<6){
          return 'too week password cannot be accepted';
        }
        return null;
      },
    );
  }
}
