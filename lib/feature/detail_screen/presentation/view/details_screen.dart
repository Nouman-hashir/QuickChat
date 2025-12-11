import '../../../../quick_chat.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/bg2.png',
              fit: BoxFit.cover,
              height: 350,
            ),
          ),
          Positioned(
            top: 290,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(Icons.person, size: 80, color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff7B3EFF),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 480,
            left: 20,
            right: 20,
            child: Column(
              children: [
                CustomPhoneTextField(
                  controller: TextEditingController(),
                  labelText: 'Full Name',
                  hint: 'Enter your full name',
                  icon: Icons.person,
                ),
                SizedBox(height: 60),
                CustomLoginButton(
                  icon: Icons.fast_forward_outlined,
                  text: "Next",
                  onPressed: () {
                    context.goNamed(Routes.home.name);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
