import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/screens/invoice_screen/invoice_screen.dart';


class pdfPage extends StatefulWidget {
  const pdfPage({super.key});

  @override
  State<pdfPage> createState() => _pdfPageState();
}

class _pdfPageState extends State<pdfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF'),
      ),
      body: PdfPreview(
        build: (format) => generatePdf(),

      ),
    );
  }
}
