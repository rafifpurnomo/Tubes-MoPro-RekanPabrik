part of '../page.dart';

class profilePelamar extends StatefulWidget {
  const profilePelamar({super.key});

  @override
  State<profilePelamar> createState() => _profilePelamarState();
}

class _profilePelamarState extends State<profilePelamar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: true,
          child: ListView(
            children: [Text("INI PROFILE PAGE")],
          )),
      //bottomNavigationBar: navbarComponent(),
    );
  }
}
