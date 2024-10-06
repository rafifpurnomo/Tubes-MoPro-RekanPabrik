part of 'page.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

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
        centerTitle: true, // Menyelaraskan teks di tengah
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
              alignment: Alignment.centerLeft, // Menyelaraskan teks ke kiri
              child: Container(
                width: 250, // Mengatur lebar teks
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: thirdColor,
                    fontFamily: 'poppins',
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: true, // Mengatur agar teks dapat turun ke bawah
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft, // Menyelaraskan teks ke kiri
              child: Container(
                width: 250, // Mengatur lebar teks
                child: Text(
                  "Wellcome Back",
                  style: TextStyle(
                    color: thirdColor,
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  softWrap: true, // Mengatur agar teks dapat turun ke bawah
                ),
              ),
            ),
            SizedBox(
              height: 50, // Jarak antara tombol dan teks selanjutnya
            ),
            EmailInput(),
            SizedBox(
              height: 20, // Jarak antara tombol dan teks selanjutnya
            ),
            PassInput(),
            SizedBox(
              height: 10, // Jarak antara tombol dan teks selanjutnya
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            WellcomePage()), // Ganti LoginPage dengan nama kelas halaman login Anda
                  ); // Ganti dengan nama route yang sesuai
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
              alignment: Alignment.center, // Menyelaraskan tombol ke kiri
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan aksi untuk pembuatan akun HRD
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: thirdColor, // Warna tombol
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
            SizedBox(height: 100), // Jarak antara tombol dan teks login
            RichText(
              textAlign: TextAlign.center, // Menyelaraskan teks di tengah
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
                      color: Colors.blue, // Warna biru untuk teks "log in"
                      fontWeight: FontWeight.bold, // Mengatur ketebalan font
                      decoration:
                          TextDecoration.underline, // Menambahkan garis bawah
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigasi ke halaman login
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  register_pelamar()), // Ganti LoginPage dengan nama kelas halaman login Anda
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
