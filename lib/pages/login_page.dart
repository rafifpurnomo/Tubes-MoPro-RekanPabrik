part of 'page.dart';

class login_page extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<login_page> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  String emailErrorMessage = '';
  String passErrorMessage = '';
  bool mailIsEror = false;
  bool passIsEror = false;

  bool isEmailValid(String email) {
    return email.contains('@');
  }

  bool isPassValid(String pass) {
    return pass.isNotEmpty;
  }

  bool cekEmailnPass(String email, String pass) {
    return (email.isNotEmpty && pass.isNotEmpty);
  }

  void LoginUser(String email, String pass) {
    bool akunKetemu = false;

    for (var akun in dummyAccounts) {
      if (akun['email'] == email && akun['password'] == pass) {
        akunKetemu = true;
        if (akun['role'] == 'admin') {
          Navigator.pushNamed(context, '/');
        } else if (akun['role'] == 'HRD') {
          Navigator.pushNamed(context, '/');
        } else if (akun['role'] == 'pelamar') {
          Navigator.pushNamed(context, '/pagePelamar');
        }
        break;
      }
    }

    if (!akunKetemu) {
      setState(() {
        emailErrorMessage = 'Invalid email or password';
        passErrorMessage = 'Invalid email or password';
        passIsEror = true;
        mailIsEror = true;
      });
    }
  }

  void testing() {
    try {
      Navigator.pushNamed(context, '/pagePelamar');
    } catch (e) {
      debugPrint("gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          '',
          style: TextStyle(
            color: thirdColor,
            fontFamily: 'poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: true,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 250,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: thirdColor,
                    fontFamily: 'poppins',
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: true,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 250,
                child: Text(
                  "Wellcome Back",
                  style: TextStyle(
                    color: thirdColor,
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  softWrap: true,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            EmailInput(
              emailController: EmailController,
              isEror: mailIsEror,
            ),
            if (emailErrorMessage.isNotEmpty)
              Text(
                emailErrorMessage,
                style: TextStyle(color: Colors.red),
              ),
            SizedBox(
              height: 20,
            ),
            PassInput(
              controller: passwordController,
              isEror: passIsEror,
            ),
            if (passErrorMessage.isNotEmpty)
              Text(
                passErrorMessage,
                style: TextStyle(color: Colors.red),
              ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WellcomePage()),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 16,
                    color: greyColor,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  testing();
                  // setState(() {
                  //   String email = EmailController.text;
                  //   String pass = passwordController.text;

                  //   emailErrorMessage = '';
                  //   passErrorMessage = '';

                  //   mailIsEror = false;
                  //   passIsEror = false;

                  //   if (!cekEmailnPass(email, pass)) {
                  //     emailErrorMessage = 'Email tidak boleh kosong';
                  //     mailIsEror = true;

                  //     passErrorMessage = 'Password tidak boleh kosong';
                  //     passIsEror = true;
                  //   }

                  //   if (!isEmailValid(email)) {
                  //     emailErrorMessage = 'Email harus mengandung "@"';
                  //     mailIsEror = true;
                  //   }

                  //   if (pass.isEmpty) {
                  //     passErrorMessage = 'Password tidak boleh kosong';
                  //     passIsEror = true;
                  //   }
                  //   LoginUser(email, pass);
                  // });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: thirdColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  mydivider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or continue with"),
                  ),
                  mydivider(),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: thirdColor, width: 3),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Image.asset(
                    'assets/img/google.png',
                    height: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 100),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: greyColor,
                  fontFamily: 'poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(text: "Don't have an account? "),
                  TextSpan(
                    text: "Sign up now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => register_pelamar()),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
