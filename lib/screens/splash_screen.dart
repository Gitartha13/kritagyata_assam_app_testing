import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class CreateSplashScreen extends StatefulWidget {
  const CreateSplashScreen({Key? key}) : super(key: key);

  @override
  _CreateSplashScreenState createState() => _CreateSplashScreenState();
}

class _CreateSplashScreenState extends State<CreateSplashScreen> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UserCubit>(context).setUserLoginStatus();

    return SplashScreenView(
      duration: 4000,
      imageSrc: 'assets/icons/logo.png',
      imageSize: 200,
      text: "KRITAGYATA",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        letterSpacing: 2.0,
        fontSize: 35.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
        Colors.green,
      ],
      navigateRoute: LoginScreen(),
      backgroundColor: Colors.white,
      pageRouteTransition: PageRouteTransition.SlideTransition,
    );
  }
}
