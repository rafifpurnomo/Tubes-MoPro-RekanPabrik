import 'package:flutter/material.dart';
import 'package:rekanpabrik/models/perusahaan.model.dart';
import 'package:rekanpabrik/pages/page.dart';
import 'package:rekanpabrik/shared/shared.dart';
import 'package:rekanpabrik/utils/dummyPerusahaan.dart';

class searchBarCariPabrik extends StatefulWidget {
  const searchBarCariPabrik({super.key});

  @override
  _searchBarCariPabrik createState() => _searchBarCariPabrik();
}

class _searchBarCariPabrik extends State<searchBarCariPabrik> {
  String query = '';
  List<Perusahaan> results = []; // For storing search results

  @override
  void initState() {
    super.initState();
    results = dummyPerusahaan.take(5).map((perusahaan) {
      return Perusahaan(
        id: perusahaan['id'],
        imgPath: perusahaan['img'],
        name: perusahaan['nama'],
        about: perusahaan['about'],
        alamat: perusahaan['alamat'],
        jumlahLowongan: perusahaan['jumlahLowongan'],
      );
    }).toList(); // Initialize with the first 5 companies
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                query = value;
                results = cariPerusahaan(query); // Update search results
              });
            },
            decoration: InputDecoration(
              hintText: "Search here...",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: thirdColor),
              ),
            ),
          ),
          SizedBox(height: 10), // Space between search bar and results

          // Cek apakah hasil pencarian kosong
          results.isEmpty
              ? Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                        'No companies found',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      )) // Tampilkan pesan jika kosong
                    ],
                  ),
                )
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  height: 600,
                  child: ListView.builder(
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5), // Space between items
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey), // Color of the border
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                          color: Colors.white, // Background color
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigate to the detail page with the company ID
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => detailPerusahaan(
                                    companyId: results[index].id),
                              ),
                            );
                          },
                          child: ListTile(
                            leading: Image.asset(results[index].imgPath),
                            title: Text(results[index].name),
                            subtitle: Text(
                                '${results[index].jumlahLowongan} Lowongan'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }

  List<Perusahaan> cariPerusahaan(String nama) {
    if (nama.isEmpty) {
      // Return first 5 companies if query is empty
      return dummyPerusahaan.take(5).map((perusahaan) {
        return Perusahaan(
          id: perusahaan['id'],
          imgPath: perusahaan['img'],
          name: perusahaan['nama'],
          about: perusahaan['about'] ??
              'No description available', // Default value
          alamat:
              perusahaan['alamat'] ?? 'No address available', // Default value
          jumlahLowongan: perusahaan['jumlahLowongan'] ?? 0, // Default value
        );
      }).toList();
    }

    // List for found companies
    List<Perusahaan> foundPerusahaan = [];
    for (var perusahaan in dummyPerusahaan) {
      if (perusahaan['nama'].toLowerCase().contains(nama.toLowerCase())) {
        foundPerusahaan.add(Perusahaan(
          id: perusahaan['id'],
          imgPath: perusahaan['img'],
          name: perusahaan['nama'],
          about: perusahaan['about'] ??
              'No description available', // Default value
          alamat:
              perusahaan['alamat'] ?? 'No address available', // Default value
          jumlahLowongan: perusahaan['jumlahLowongan'] ?? 0, // Default value
        ));
      }
    }
    return foundPerusahaan; // Return the list of matching companies
  }
}
