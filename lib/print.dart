import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';

import 'dart:typed_data';

class Print extends StatelessWidget {

   String title;

  Future<Uint8List> _generatePdf(PdfPageFormat format) async {
    final pdf = pw.Document();
    // final font = await rootBundle.load("assets/latha.ttf");
    // final ttf = pw.Font.ttf(font);
    var tamilFont = pw.Font.ttf(await rootBundle.load("assets/MuktaMalar-Regular.ttf"));
    pdf.addPage(
      pw.Page(
        theme:pw.ThemeData.withFont(
          base:tamilFont,
        ),
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Center(
            child: pw.ListView(
              children: [
                pw.Row(children: [
                  pw.Text("அங்குலம்"),
                  pw.Text("அங்குலம்")
                ]),
                pw.Row(children: [pw.Text("அங்குலம்"), pw.Text("அங்குலம்")]),
                pw.Row(children: [pw.Text("அங்குலம்"), pw.Text("அங்குலம்")]),
                pw.Row(children: [pw.Text("அங்குலம்"), pw.Text("அங்குலம்")]),
                pw.Row(children: [pw.Text("அங்குலம்"), pw.Text("அங்குலம்")]),
              ],
            ),
          );
        },
      ),
    );

    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return PdfPreview(
          build: (format) => _generatePdf(format),
        );
  }
}

