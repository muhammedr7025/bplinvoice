import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoicePdf extends StatelessWidget {
  const InvoicePdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Invoice Preview')),
        body: PdfPreview(build: ((format) => makePdf())));
  }

  Future<Uint8List> makePdf() async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(build: (context) {
      return pw.Padding(
          padding: const pw.EdgeInsets.all(-40),
          child: pw.Column(children: [
            pw.Container(
                child: pw.Column(children: [
              pw.Container(
                  height: 90,
                  child: pw.Row(children: [
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Row(children: [
                              pw.Expanded(
                                  flex: 3,
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                  )),
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Column(children: [
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text('CREDIT')))),
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text('CASH'))))
                                      ]))),
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Column(children: [
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text('ORGIN')))),
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            ))
                                      ])))
                            ]))),
                    pw.Expanded(
                        child: pw.Container(
                            child: pw.Row(children: [
                      pw.Expanded(
                          flex: 3,
                          child: pw.Container(
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(width: 0.5),
                              ),
                              child: pw.Column(children: [
                                pw.Expanded(
                                    flex: 1,
                                    child: pw.Container(
                                        decoration: pw.BoxDecoration(
                                          border: pw.Border.all(width: 0.5),
                                        ),
                                        child: pw.Center(
                                            child: pw.Text('DESTINATION')))),
                                pw.Expanded(
                                    flex: 3,
                                    child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                    ))
                              ]))),
                      pw.Expanded(
                          flex: 4,
                          child: pw.Container(
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(width: 0.5),
                              ),
                              child: pw.Column(children: [
                                pw.Expanded(
                                    flex: 2,
                                    child: pw.Container(
                                        decoration: pw.BoxDecoration(
                                          border: pw.Border.all(width: 0.5),
                                        ),
                                        child: pw.Center(
                                            child: pw.Text('S.No.')))),
                                pw.Expanded(
                                    flex: 3,
                                    child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                    )),
                                pw.Expanded(
                                    flex: 3,
                                    child: pw.Container(
                                        decoration: pw.BoxDecoration(
                                          border: pw.Border.all(width: 0.5),
                                        ),
                                        child: pw.Row(children: [
                                          pw.Expanded(
                                              flex: 2,
                                              child: pw.Container(
                                                  decoration: pw.BoxDecoration(
                                                    border: pw.Border.all(
                                                        width: 0.5),
                                                  ),
                                                  child: pw.Center(
                                                      child: pw.Text(
                                                          'SHIPPING MARK')))),
                                          pw.Expanded(
                                              flex: 3,
                                              child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                              ))
                                        ])))
                              ])))
                    ])))
                  ])),
              pw.Container(
                  height: 80,
                  child: pw.Row(children: [
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Column(children: [
                              pw.Expanded(
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Row(children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                        'SENDER CODE NUMBER',
                                                        style: pw.TextStyle(
                                                            fontSize: 8,
                                                            fontWeight: pw
                                                                .FontWeight
                                                                .bold))))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 4,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                      ]))),
                              pw.Expanded(
                                  child: pw.Container(
                                decoration: pw.BoxDecoration(
                                  border: pw.Border.all(width: 0.5),
                                ),
                              ))
                            ]))),
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Column(children: [
                              pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                      child: pw.Row(children: [
                                    pw.Expanded(
                                        flex: 3,
                                        child: pw.Container(
                                            child: pw.Text(
                                                'CONSIGNEE / RECEIVERS NAME & ADDRESS',
                                                style: pw.TextStyle(
                                                  fontWeight:
                                                      pw.FontWeight.bold,
                                                  fontSize: 5,
                                                )))),
                                    pw.Expanded(
                                        flex: 4,
                                        child: pw.Container(
                                            color: PdfColors.black,
                                            child: pw.Text(
                                                ' PO BOXES ARE NOT DELIVERABLE',
                                                style: pw.TextStyle(
                                                    color: PdfColors.white,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                    fontSize: 8))))
                                  ]))),
                              pw.Expanded(flex: 5, child: pw.Container())
                            ])))
                  ])),
              pw.Container(
                  height: 40,
                  child: pw.Row(children: [
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Row(children: [
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Center(child: pw.Text('MOB')))),
                              pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                  )),
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Center(child: pw.Text('TEL')))),
                              pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                  )),
                            ]))),
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Row(children: [
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Center(child: pw.Text('MOB')))),
                              pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                  )),
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Center(child: pw.Text('TEL')))),
                              pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                  )),
                            ])))
                  ])),
              pw.Container(
                  height: 120,
                  child: pw.Row(children: [
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Column(children: [
                              pw.Expanded(
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Row(children: [
                                        pw.Expanded(
                                            flex: 5,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            3),
                                                    child: pw.Text(
                                                        'DESCRIPTION OF CONTENT(FOR PACK SERVICE ATTACH INVOICE)',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text('DOX',
                                                        style: pw.TextStyle(
                                                            fontWeight: pw
                                                                .FontWeight
                                                                .bold))))),
                                      ]))),
                              pw.Expanded(
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Row(children: [
                                        pw.Expanded(
                                            flex: 5,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            3),
                                                    child: pw.Text(
                                                        'IF NON-DOCUMENT, DECLARED VALUE FOR CUSTOMS',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text('XPS',
                                                        style: pw.TextStyle(
                                                            fontWeight: pw
                                                                .FontWeight
                                                                .bold))))),
                                      ]))),
                            ]))),
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Row(children: [
                              pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Column(children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                  'DETAILS OF SHIPMENT',
                                                )))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Row(children: [
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Center(
                                                              child: pw.Text(
                                                            'Total Weight',
                                                          )))),
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                    decoration:
                                                        pw.BoxDecoration(
                                                      border: pw.Border.all(
                                                          width: 0.5),
                                                    ),
                                                  )),
                                                ]))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Row(children: [
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Center(
                                                              child: pw.Text(
                                                            'No. Of Pcs',
                                                          )))),
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                    decoration:
                                                        pw.BoxDecoration(
                                                      border: pw.Border.all(
                                                          width: 0.5),
                                                    ),
                                                  )),
                                                ]))),
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Row(children: [
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Center(
                                                              child: pw.Text(
                                                            'Mode of Shipment',
                                                          )))),
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                    decoration:
                                                        pw.BoxDecoration(
                                                      border: pw.Border.all(
                                                          width: 0.5),
                                                    ),
                                                  )),
                                                ]))),
                                      ]))),
                              pw.Expanded(
                                  flex: 3,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Column(children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                  'FREIGHT CHARGES',
                                                )))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                  'Frieght',
                                                )))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                  'Packing',
                                                )))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                  'Other Charges',
                                                )))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Center(
                                                    child: pw.Text(
                                                  'Total',
                                                )))),
                                      ]))),
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                  )),
                            ])))
                  ])),
              pw.Container(
                  height: 80,
                  child: pw.Row(children: [
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Column(children: [
                              pw.Expanded(
                                  flex: 5,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Row(children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Container(
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                            )),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Column(children: [
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Padding(
                                                              padding: const pw
                                                                      .EdgeInsets.all(
                                                                  2),
                                                              child: pw.Text(
                                                                  'SHIPPERS REFERENCE',
                                                                  style: const pw
                                                                          .TextStyle(
                                                                      fontSize:
                                                                          7))))),
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          alignment: pw
                                                              .Alignment
                                                              .topLeft,
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Padding(
                                                              padding: const pw
                                                                      .EdgeInsets.all(
                                                                  2),
                                                              child: pw.Text(
                                                                  'DATE',
                                                                  style: const pw
                                                                          .TextStyle(
                                                                      fontSize:
                                                                          7))))),
                                                ]))),
                                      ]))),
                              pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Row(children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            2),
                                                    child: pw.Text(
                                                        'For COURIERS',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Column(children: [
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          alignment: pw
                                                              .Alignment
                                                              .topLeft,
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Padding(
                                                              padding: const pw
                                                                      .EdgeInsets.all(
                                                                  2),
                                                              child: pw.Text(
                                                                  'TIME',
                                                                  style: const pw
                                                                          .TextStyle(
                                                                      fontSize:
                                                                          7))))),
                                                  pw.Expanded(
                                                      child: pw.Container(
                                                          alignment: pw
                                                              .Alignment
                                                              .topLeft,
                                                          decoration:
                                                              pw.BoxDecoration(
                                                            border:
                                                                pw.Border.all(
                                                                    width: 0.5),
                                                          ),
                                                          child: pw.Padding(
                                                              padding: const pw
                                                                      .EdgeInsets.all(
                                                                  2),
                                                              child: pw.Text(
                                                                  'DATE',
                                                                  style: const pw
                                                                          .TextStyle(
                                                                      fontSize:
                                                                          7))))),
                                                ]))),
                                      ]))),
                            ]))),
                    pw.Expanded(
                        child: pw.Container(
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(width: 0.5),
                            ),
                            child: pw.Row(children: [
                              pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                          border: pw.Border.all(width: 0.5),
                                          color: PdfColors.black),
                                      child: pw.Column(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.spaceAround,
                                          children: [
                                            pw.Text('P',
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                    fontSize: 20,
                                                    color: PdfColors.white)),
                                            pw.Text('O',
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                    fontSize: 20,
                                                    color: PdfColors.white)),
                                            pw.Text('D',
                                                style: pw.TextStyle(
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                    fontSize: 20,
                                                    color: PdfColors.white))
                                          ]))),
                              pw.Expanded(
                                  flex: 7,
                                  child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        border: pw.Border.all(width: 0.5),
                                      ),
                                      child: pw.Column(children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            2),
                                                    child: pw.Text(
                                                        'I, the undersigned.on behalf of the above sender/shipper acknowledge the receipt of goods in good condition',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            2),
                                                    child: pw.Text(
                                                        'Receivers Name',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            2),
                                                    child: pw.Text(
                                                        'Date & Time',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                        pw.Expanded(
                                            flex: 1,
                                            child: pw.Container(
                                                alignment: pw.Alignment.topLeft,
                                                decoration: pw.BoxDecoration(
                                                  border:
                                                      pw.Border.all(width: 0.5),
                                                ),
                                                child: pw.Padding(
                                                    padding:
                                                        const pw.EdgeInsets.all(
                                                            2),
                                                    child: pw.Text('Signature',
                                                        style:
                                                            const pw.TextStyle(
                                                                fontSize:
                                                                    7))))),
                                      ]))),
                            ]))),
                  ]))
            ])),
            pw.Divider(height: 3, color: PdfColors.white),
            pw.Container(
                height: 90,
                child: pw.Column(children: [
                  pw.Expanded(
                      flex: 1,
                      child: pw.Container(
                          alignment: pw.Alignment.topCenter,
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(width: 0.5),
                          ),
                          child: pw.Center(
                              child: pw.Text('INVOICE WITH PACKING LIST',
                                  style: const pw.TextStyle(fontSize: 7))))),
                  pw.Expanded(
                      flex: 1,
                      child: pw.Container(
                          alignment: pw.Alignment.topCenter,
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(width: 0.5),
                          ),
                          child: pw.Row(children: [
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Center(
                                        child: pw.Text('Pre-Carriage by',
                                            style: const pw.TextStyle(
                                                fontSize: 7))))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Center(
                                        child: pw.Text(
                                            'Place of Receipt by Pre-carrier',
                                            style: const pw.TextStyle(
                                                fontSize: 7))))),
                            pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Center(
                                        child: pw.Text(
                                            'Terms of Delivery and Payment',
                                            style: const pw.TextStyle(
                                                fontSize: 7))))),
                          ]))),
                  pw.Expanded(
                      flex: 4,
                      child: pw.Container(
                          alignment: pw.Alignment.topCenter,
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(width: 0.5),
                          ),
                          child: pw.Row(children: [
                            pw.Expanded(
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Column(children: [
                                      pw.Expanded(
                                          child: pw.Container(
                                              alignment: pw.Alignment.topCenter,
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                              child: pw.Row(children: [
                                                pw.Expanded(
                                                    child: pw.Container(
                                                        alignment: pw
                                                            .Alignment.topLeft,
                                                        decoration:
                                                            pw.BoxDecoration(
                                                          border: pw.Border.all(
                                                              width: 0.5),
                                                        ),
                                                        child: pw.Text(
                                                            'Vessele/Flight No.',
                                                            style: const pw
                                                                    .TextStyle(
                                                                fontSize: 7)))),
                                                pw.Expanded(
                                                    child: pw.Container(
                                                        alignment: pw
                                                            .Alignment.topLeft,
                                                        decoration:
                                                            pw.BoxDecoration(
                                                          border: pw.Border.all(
                                                              width: 0.5),
                                                        ),
                                                        child: pw.Text(
                                                            'Port of Loading',
                                                            style: const pw
                                                                    .TextStyle(
                                                                fontSize: 7)))),
                                              ]))),
                                      pw.Expanded(
                                          child: pw.Container(
                                              alignment: pw.Alignment.topCenter,
                                              decoration: pw.BoxDecoration(
                                                border:
                                                    pw.Border.all(width: 0.5),
                                              ),
                                              child: pw.Row(children: [
                                                pw.Expanded(
                                                    child: pw.Container(
                                                        alignment: pw
                                                            .Alignment.topLeft,
                                                        decoration:
                                                            pw.BoxDecoration(
                                                          border: pw.Border.all(
                                                              width: 0.5),
                                                        ),
                                                        child: pw.Text(
                                                            'Port of Discharge',
                                                            style: const pw
                                                                    .TextStyle(
                                                                fontSize: 7)))),
                                                pw.Expanded(
                                                    child: pw.Container(
                                                        alignment: pw
                                                            .Alignment.topLeft,
                                                        decoration:
                                                            pw.BoxDecoration(
                                                          border: pw.Border.all(
                                                              width: 0.5),
                                                        ),
                                                        child: pw.Text(
                                                            'Port of Discharge',
                                                            style: const pw
                                                                    .TextStyle(
                                                                fontSize: 7)))),
                                              ]))),
                                    ]))),
                            pw.Expanded(
                                child: pw.Container(
                              alignment: pw.Alignment.topCenter,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(width: 0.5),
                              ),
                            )),
                          ]))),
                  pw.Expanded(
                      flex: 2,
                      child: pw.Container(
                          alignment: pw.Alignment.topCenter,
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(width: 0.5),
                          ),
                          child: pw.Row(children: [
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('Description',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('Quantity (PCS))',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('RATE (USD)',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('Amount (USD)',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('Description',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('Quantity (PCS)',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('PRATE (USD)',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Text('Amount (USD)',
                                        style:
                                            const pw.TextStyle(fontSize: 7)))),
                          ]))),
                  pw.Expanded(
                      child: pw.Container(
                          alignment: pw.Alignment.topCenter,
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(width: 0.5),
                          ),
                          child: pw.Row(children: [
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                  alignment: pw.Alignment.center,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                            pw.Expanded(
                                flex: 1,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                            pw.Expanded(
                                flex: 8,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                          ]))),
                  pw.Expanded(
                      flex: 1,
                      child: pw.Container(
                          alignment: pw.Alignment.topCenter,
                          decoration: pw.BoxDecoration(
                            border: pw.Border.all(width: 0.5),
                          ),
                          child: pw.Row(children: [
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Center(
                                        child: pw.Text('NUMBER OF PCS',
                                            style: const pw.TextStyle(
                                                fontSize: 7))))),
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Center(
                                        child: pw.Text('TOTAL WEIGHTS',
                                            style: const pw.TextStyle(
                                                fontSize: 7))))),
                            pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                            pw.Expanded(
                                flex: 4,
                                child: pw.Container(
                                    alignment: pw.Alignment.topCenter,
                                    decoration: pw.BoxDecoration(
                                      border: pw.Border.all(width: 0.5),
                                    ),
                                    child: pw.Center(
                                        child: pw.Text('TOTAL VALUES',
                                            style: const pw.TextStyle(
                                                fontSize: 7))))),
                            pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                            pw.Expanded(
                                flex: 2,
                                child: pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  decoration: pw.BoxDecoration(
                                    border: pw.Border.all(width: 0.5),
                                  ),
                                )),
                          ]))),
                ])),
            pw.Container()
          ]));
    }));
    return pdf.save();
  }
}
