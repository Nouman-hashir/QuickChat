import '../../../../quick_chat.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/bg.png'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login On Your Account',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 20),
                  CustomTabBar(controller: tabController),
                  const SizedBox(height: 55),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Column(
                          children: [
                            CustomPhoneTextField(
                              controller: TextEditingController(),
                            ),
                            SizedBox(height: 50),
                            CustomLoginButton(
                              icon: Icons.fast_forward_outlined,
                              text: "Next Step",
                              onPressed: () {
                                tabController.animateTo(1);
                              },
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: Color(0xff3D3D3D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                               GestureDetector(
                                onTap: () {},
                                 child: Text(
                                    " SignUp",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 132, 57, 238),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    )),
                               )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomPhoneTextField(
                              controller: TextEditingController(),
                              labelText: 'Verification Code',
                              hint: 'Enter your verification code',
                            ),
                            SizedBox(height: 50),
                            CustomLoginButton(
                              icon: Icons.verified_outlined,
                              text: "Verify",
                              onPressed: () {
                              },
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Didn't receive the code?",
                                  style: TextStyle(
                                    color: Color(0xff3D3D3D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,  
                                  ),
                                ),  
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    " Resend",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 132, 57, 238),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    )),   
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );  
  }
}
