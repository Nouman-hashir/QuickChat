

import '../../../../quick_chat.dart';

class SpalshView extends StatelessWidget {
  const SpalshView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        nextScreen: LoginScreen(),
        backgroundColor: Colors.white,
      ),
    );
  }
}