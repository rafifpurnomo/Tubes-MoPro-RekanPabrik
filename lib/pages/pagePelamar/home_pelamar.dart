part of '../page.dart';

class home_pelamar extends StatefulWidget {
  const home_pelamar({super.key});

  @override
  State<home_pelamar> createState() => _homePelamar();
}

class _homePelamar extends State<home_pelamar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: true,
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 300,
                height: 120,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 30,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nama User",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green,
                      backgroundImage: AssetImage('assets/img/dapa.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
