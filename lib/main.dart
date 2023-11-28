import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[

            // SLIVER BAR GRADIENT BIRU-UNGU
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(0.9),
                      Colors.purple.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'images/inaklug.png',
                    fit: BoxFit.contain,
                    height: 50,
                  ),
                  const Text('Inaklug'),
                ],
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Builder(
                    builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    },
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
            ),

            // SLIVER BACKGROUND BERLIN DAN TULISAN "HUBUNGI KAMI"
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/berlin.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 100,
                        left: 20,
                        right: 20,
                        child: Text(
                          'Hubungi Kami',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Times New Roman',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // SLIVER TULISAN "KIRIM PESAN"
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kirim Pesan',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        MessageForm(),
                      ],
                    ),
                  );
                },
                childCount: 1,
              ),
            ),

            // SLIVER INFORMASI HUBUNGI KAMI (ALAMAT & NO TELP)
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'HUBUNGI KAMI',
                          style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Times New Roman'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'KANTOR PUSAT',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT. BASEMENT.',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Times New Roman',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Phone : 085286754052',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Times New Roman',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // SLIVER FOOTER COPYRIGHT
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Copyright 2023 - inaklug hak cipta dilindungi undang undang",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Times New Roman',
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),

        //DRAWER HAMBURGER
        endDrawer: Center(
          child: Container(
            width: double.infinity,
            margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.47),
            child: Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/inaklug.png",
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),

                  //ISI DRAWER
                  ListTile(
                    title: Text('HOME', style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left: 140),
                  ),
                  ListTile(
                    title: Text('TENTANG KAMI', style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left: 140),
                  ),
                  ListTile(
                    title: Text('LAYANAN KAMI', style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left: 140),
                  ),
                  ListTile(
                    title: Text('ARTIKEL', style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left: 140),
                  ),
                  ListTile(
                    title: Text('HUBUNGI KAMI', style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left: 140),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// BUAT FORM KIRIM PESAN
class MessageForm extends StatefulWidget {
  @override
  _MessageFormState createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  WebViewPlusController? _controller;
  double _height = 1;
  String _errorText = '';

  // CEK NAMA DAN EMAIL HARUS DIISI
  void _sendMessage() {
    if (_nameController.text.isEmpty || _emailController.text.isEmpty) {
      setState(() {
        _errorText = 'Nama dan Email harus diisi';
      });
    }
  }

  // PAGE FORM
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _nameController,
          decoration: InputDecoration(labelText: 'Nama*'),
        ),
        TextField(
          controller: _companyController,
          decoration: InputDecoration(labelText: 'Perusahaan/Organisasi'),
        ),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(labelText: 'Email*'),
        ),
        TextField(
          controller: _phoneController,
          decoration: InputDecoration(labelText: 'Telepon/Handphone'),
        ),
        Container(
          child: Column(
            children: [
              SizedBox(height: 10.0),
              TextFormField(
                controller: _messageController,
                decoration: InputDecoration(
                  labelText: 'Kirim Pesan',
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                maxLines: 5,
              ),

              // BUAT CAPTCHA
              SizedBox(
                height: _height,
                child: WebViewPlus(
                  onWebViewCreated: (controller) {
                    this._controller = controller;
                    controller.loadUrl('assets/webpages/index.html');
                  },
                  onPageFinished: (url) {
                    _controller?.getHeight().then((double height) {
                      print("Height: " + height.toString());
                      setState(() {
                        _height = height;
                      });
                    });
                  },
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 16.0),
        Text(
          _errorText,
          style: TextStyle(color: Colors.red),
        ),
        SizedBox(height: 16.0),

        // BUTTON KIRIM PESAN
        ElevatedButton(
          onPressed:_sendMessage,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
                side: BorderSide(
                  color:Colors.purple,
                  width: 1,
                ),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 14,bottom: 14,left: 40,right: 40),
            child: Text(
              "Kirim Pesan",
              style: TextStyle(
                color:  Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
