part of '../page.dart';

class Caripekerjaan extends StatefulWidget {
  const Caripekerjaan({super.key});

  @override
  State<Caripekerjaan> createState() => _Caripekerjaan();
}

class _Caripekerjaan extends State<Caripekerjaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: true,
          child: ListView(
            children: [Text("INI CARI PEKERJAAN PAGE")],
          )),
      //bottomNavigationBar: navbarComponent(),
    );
  }
}
