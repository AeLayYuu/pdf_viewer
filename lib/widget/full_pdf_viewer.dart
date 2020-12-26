import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';

class FullPdfViewer extends StatefulWidget {
 
  final String title;
  final String path;
  FullPdfViewer( this.title,this.path);
  @override
  _FullPdfViewerState createState() => _FullPdfViewerState();
}

class _FullPdfViewerState extends State<FullPdfViewer> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset(widget.path);

    setState(() => _isLoading = false);
  }

  Future<void> _sharePDF() async {
    try {
      final ByteData bytes = await rootBundle.load(widget.path);
      await Share.file(widget.title, widget.path.split('/').last,
          bytes.buffer.asUint8List(), 'text/pdf');
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              _sharePDF();
            },
          )
        ],
        title: Text(widget.title),
      ),
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
              ),
      ),
    );
  }
}
