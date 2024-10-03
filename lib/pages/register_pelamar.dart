part of 'page.dart';

class register_pelamar extends StatelessWidget {
  const register_pelamar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Register Page',
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
            // Teks untuk recruiter
            Align(
              alignment: Alignment.centerLeft, // Menyelaraskan teks ke kiri
              child: Container(
                width: 250, // Mengatur lebar teks
                child: Text(
                  "If you are a recruiter, please create an account here",
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true, // Mengatur agar teks dapat turun ke bawah
                ),
              ),
            ),

            SizedBox(
              height: 10, // Jarak antara teks dan tombol
            ),
            // Tombol untuk recruiter
            Align(
              alignment: Alignment.centerLeft, // Menyelaraskan tombol ke kiri
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan aksi untuk pembuatan akun HRD
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: thirdColor, // Warna tombol
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Create Account HRD',
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50, // Jarak antara tombol dan teks selanjutnya
            ),
            // Teks Welcome Applicants
            Text(
              "Welcome Applicants",
              style: TextStyle(
                color: thirdColor,
                fontFamily: 'poppins',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            // Deskripsi di bawah Welcome
            Text(
              "Sign up to your account to continue",
              style: TextStyle(
                color: greyColor,
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 30, // Jarak antara deskripsi dan input
            ),

            // Input Fields
            TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(
                  color: greyColor, // Warna label
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Mengatur border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika tidak fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika tidak fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // Jarak antar input
            TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: TextStyle(
                  color: greyColor, // Warna label
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Mengatur border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika tidak fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika tidak fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // Jarak antar input
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: greyColor, // Warna label
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Mengatur border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika tidak fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika tidak fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // Jarak antar input
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: greyColor, // Warna label
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Mengatur border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika tidak fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika tidak fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // Jarak antar input
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  color: greyColor, // Warna label
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(15), // Mengatur border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika tidak fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika tidak fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Mengatur border radius ketika fokus
                  borderSide: BorderSide(
                    color: thirdColor, // Warna border ketika fokus
                    width: 2.0, // Ketebalan border
                  ),
                ),
              ),
            ),
            SizedBox(height: 30), // Jarak sebelum teks login
            Align(
              alignment: Alignment.center, // Menyelaraskan teks ke kiri
              child: Container(
                width: 300, // Mengatur lebar teks
                child: Text(
                  "by proceeding you confirm that you have read and agree to calendly terms of use and privacy notice",
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true, // Mengatur agar teks dapat turun ke bawah
                ),
              ),
            ),
            SizedBox(height: 10),
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
                    horizontal: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Jarak antara tombol dan teks login
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
                  TextSpan(text: "already have an account? "),
                  TextSpan(
                    text: "login",
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
                                  WellcomePage()), // Ganti LoginPage dengan nama kelas halaman login Anda
                        );
                      },
                  ),
                ],
              ),
            ),

            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
