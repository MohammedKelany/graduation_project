import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'diseasedetail.dart';

class Disease extends StatefulWidget {
  const Disease({super.key});

  @override
  _DiseaseState createState() => _DiseaseState();
}

class _DiseaseState extends State<Disease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Disease',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.black87,
                width: 0.2,
              ))),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DiseaseDetail(
                              disease: "document['Name']",
                            )),
                  );
                },
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "document['Name']",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "document['Symtomps']",
                          style: GoogleFonts.lato(
                              fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          itemCount: 10,
        ));
  }
}
