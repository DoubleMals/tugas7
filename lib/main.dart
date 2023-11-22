import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[

            // SLIVER APP BAR (LOGO INAKLUG, TULISAN INAKLUG, ICON BURGER, 2 WARNA AGAK TRANSPARANT)
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
                  const Text('inaklug'),
                ],
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Builder(
                    builder: (context){
                      return IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: (){
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    },
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
            ),

            // SLIVER LIST FOTO TENTANG KAMI
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Image.asset("images/berlin.jpg"),
                    Positioned(
                      bottom: 20,
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
              ]),
            ),

            // SLIVER LIST KIRIM PESAN
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
                childCount: 1
              ),
            ),

            // SLIVER LIST TULISAN HUBUNGI KAMI DAN ISINYA
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
                              fontFamily: 'Times New Roman'
                          ),
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

            // SLIVER LIST FOOTER UNTUK COPYRIGHT
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

        // ISI BURGER ICON
        endDrawer: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height* 0.47),
            child: Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 10,right: 10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "image/logoInaklug.png",
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
                  ListTile(
                    title: Text('HOME',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('TENTANG KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('LAYANAN KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('ARTIKEL',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('HUBUNGI KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
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

// KONTROL MESSAGE FORM
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

  String _errorText = '';

  void _sendMessage() {
    if (_nameController.text.isEmpty || _emailController.text.isEmpty) {
      setState(() {
        _errorText = 'Nama/Email harus diisi';
      });
    } else {
      // Lakukan sesuatu dengan data pesan yang dikirim
      String name = _nameController.text;
      String company = _companyController.text;
      String email = _emailController.text;
      String phone = _phoneController.text;
      String message = _messageController.text;

      print('Pesan terkirim:');
      print('Nama: $name');
      print('Perusahaan/Organisasi: $company');
      print('Email: $email');
      print('Telepon/Handphone: $phone');
      print('Pesan: $message');

      // Clear input setelah mengirim
      _nameController.clear();
      _companyController.clear();
      _emailController.clear();
      _phoneController.clear();
      _messageController.clear();

      // Reset pesan error
      setState(() {
        _errorText = '';
      });
    }
  }

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
        TextFormField(
          controller: _messageController,
          decoration: InputDecoration(
            labelText: 'Kirim Pesan',
            border: OutlineInputBorder(),
          ),
          maxLines: 5,
        ),
        SizedBox(height: 16.0),
        Text(
          _errorText,
          style: TextStyle(color: Colors.red),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: _sendMessage,
          child: Text('Kirim Pesan'),
        ),
      ],
    );
  }
}