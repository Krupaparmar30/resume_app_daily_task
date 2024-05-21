import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class invoicePage extends StatefulWidget {
  const invoicePage({super.key});

  @override
  State<invoicePage> createState() => _invoicePageState();
}

class _invoicePageState extends State<invoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Invoice Screen')),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/print');
              },
              child: Icon(Icons.print))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
                invoiceList.length,
                (index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 500,
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 2),
                                blurRadius: 2,
                                spreadRadius: 2,
                              )
                            ]),
                            child: ListTile(
                              title: Text(
                                invoiceList[index].name!,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w100),
                              ),
                              subtitle: Text(
                                invoiceList[index].price!,
                                style: TextStyle(fontSize: 16),
                              ),
                              trailing: Text(
                                invoiceList[index].catagory!,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue.shade900),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoiceList.add(InvoiceModel(
                name: 'onePlus', price: '250000', catagory: 'mobile'));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<InvoiceModel> invoiceList = [
  InvoiceModel(
    name: 'hp victual',
    price: '550000',
    catagory: 'laptop',
  ),
  InvoiceModel(
    name: 'apple',
    price: '80000',
    catagory: 'mobile',
  ),
  InvoiceModel(
    name: 'mi',
    price: '15000',
    catagory: 'mobile',
  ),
  InvoiceModel(
    name: 'Dell',
    price: '750000',
    catagory: 'laptop',
  ),
  InvoiceModel(
    name: 'oppo',
    price: '25000',
    catagory: 'mobile',
  ),
  InvoiceModel(
    name: 'vivo',
    price: '150000',
    catagory: 'mobile',
  ),
];

class InvoiceModel {
  String? name;
  String? price;
  String? catagory;

  InvoiceModel({this.name, this.price, this.catagory});
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        build: (context) => pw.Row(children: [
              pw.Column(
                  children: List.generate(
                invoiceList.length,
                (index) => pw.Text(
                    '${invoiceList[index].name},\t\t\t\t\t\t\t\t \n\n\n',
                    style: pw.TextStyle(
                      fontSize: 30,
                    )),
              )),
              pw.Column(
                  children: List.generate(
                invoiceList.length,
                (index) => pw.Text(
                    '${invoiceList[index].price},\t\t\t\t\t\t\t\t \n\n\n',
                    style: pw.TextStyle(fontSize: 30)),
              )),
              pw.Column(
                  children: List.generate(
                invoiceList.length,
                (index) => pw.Text(
                    '${invoiceList[index].catagory},\t\t\t\t\t\t\t\t \n\n\n',
                    style: pw.TextStyle(fontSize: 30)),
              )),
            ])),
  );
  return pdf.save();
}
