
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key:key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  static List<Widget> _pages = [
    Home(),
    PanoramaPage(),
    AuthorPage(),
  ];

  int _selectedTab = 0;
  void _pilihTab(index){
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Proyek Mobile Programming',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas Proyek Mobile Programming',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,),),
        ),
        body: _pages[_selectedTab],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: _pilihTab,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue, size: 30),
              label: 'Welcome',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.panorama, color: Colors.blue, size: 30),
              label: 'Indonesia',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue, size: 30),
              label: 'Author',
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _nama = '';
  String _nim = '';
  String _kelas = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Masukkan Nama'),
                onChanged: (text) {
                  var textInput = text;
                  if (textInput != null) {
                    setState(() {
                      _nama = textInput;
                    });
                  }
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Masukkan Nim'),
                onChanged: (text) {
                  var dataInput = text;
                  if (dataInput != null) {
                    setState(() {
                      _nim = dataInput;
                    });
                  }
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Masukkan Kelas'),
                onChanged: (text) {
                  var dataInput = text;
                  if (dataInput != null) {
                    setState(() {
                      _kelas = dataInput;
                    });
                  }
                },
              ),
              Spacer(),
              Text('Selamat Datang',style: TextStyle(
                fontSize: 20,
              ),),
              Spacer(),

              Text('Nama: $_nama'),
              Spacer(),

              Text('NIM: $_nim'),
              Spacer(),

              Text('Kelas: $_kelas'),
              Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}

class PanoramaPage extends StatelessWidget {
  void myDialog(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (BuildContext konteks) {
        return AlertDialog(
          title: Text('Hubungi Kami'),
          content: Text('Hubungi Kami di anggern514@gmail.com'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(konteks).pop(),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Selamat Datang di Indonesia',style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                      right: 8.0,
                      left: 8.0,
                    ),
                    child: Text('Nikmati Alam Indonesia yang indah',style: TextStyle(fontSize: 20,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(
                        "https://ik.imagekit.io/tvlk/blog/2020/01/keindahan-alam-indonesia-1-Wikipedia-scaled.jpg?tr=dpr-2,w-675"               ),
                  ), Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(
                        "https://ik.imagekit.io/tvlk/blog/2020/01/keindahan-alam-indonesia-6-Wikipedia.jpg?tr=dpr-2,w-675"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () => myDialog(context),
                      child: Text("Kontak kami"),
                    ),
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

class AuthorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Angger Nur Amin',style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 10.0,
                      right: 8.0,
                      left: 8.0,
                    ),
                    child: Text('21201087',style: TextStyle(fontSize: 20,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage(
                        "assets/profile.jpg"
                      ),
                    )
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




