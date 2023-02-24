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
                  ]))
            ])),
            pw.Container(),
            pw.Container()
          ]));
    }));
    return pdf.save();
  }
}
