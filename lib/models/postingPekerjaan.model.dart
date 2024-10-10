class postingPekerjaan {
  int idPostPekerjaan;
  int idPerusahaan;
  String posisi;
  String lokasi;
  String jobDetails;
  String requirments;
  String status;
  DateTime createdAt;

  postingPekerjaan({
    required this.idPostPekerjaan,
    required this.idPerusahaan,
    required this.posisi,
    required this.lokasi,
    required this.jobDetails,
    required this.requirments,
    required this.status,
    required this.createdAt,
  });
}
