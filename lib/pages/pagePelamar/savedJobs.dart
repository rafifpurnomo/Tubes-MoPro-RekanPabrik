part of '../page.dart';

class savedJobs extends StatefulWidget {
  const savedJobs({super.key});

  @override
  State<savedJobs> createState() => _savedJobsState();
}

class _savedJobsState extends State<savedJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: true,
          child: ListView(
            children: [Text("INI PEKERJAAN TERSIMPAN PAGE")],
          )),
      //bottomNavigationBar: navbarComponent(),
    );
  }
}
