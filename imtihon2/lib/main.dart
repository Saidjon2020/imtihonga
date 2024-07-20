import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/imtihonniki.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Imtihon2(),
  ));
}

class Imtihon2 extends StatefulWidget {
  @override
  _Imtihon2State createState() => _Imtihon2State();
}

class _Imtihon2State extends State<Imtihon2> {
  
  void xato() {
    if (nomcont == '') {
      Text(
        'enter your age',
        style: TextStyle(color: Colors.red),
      );
    }
  }

  final List<String> _imageAssets = [
    'rasmga/1.jpg',
    'rasmga/2.jpg',
    'rasmga/3.jpg',
    'rasmga/4.jpg',
    'rasmga/5.jpg',
    'rasmga/6.jpg',
    'rasmga/7.jpg',
    'rasmga/8.jpg',
    'rasmga/9.jpg',
    'rasmga/10.jpg',
    'rasmga/11.jpg',
    'rasmga/12.jpg',
    'rasmga/13.jpg',
    'rasmga/14.jpg',
    'rasmga/15.jpg',
    'rasmga/16.jpg',
    'rasmga/17.jpg',
    'rasmga/18.jpg',
    'rasmga/19.jpg',
    'rasmga/20.jpg',
    'rasmga/21.jpg',
    'rasmga/22.jpg',
    'rasmga/23.jpg',
    'rasmga/24.jpg',
    'rasmga/25.jpg',
    'rasmga/26.jpg',
    'rasmga/27.jpg',
    'rasmga/28.jpg',
    'rasmga/29.jpg',
    'rasmga/30.jpg',
    'rasmga/31.jpg',
  ];
  String nom = "";
  final TextEditingController nomcont = TextEditingController();

  void nomv() {
    setState(() {
      nom = nomcont.text;
    });
  }

  @override
  void dispose() {
    nomcont.dispose(); // Dispose of the controller when done.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [Colors.blue, Colors.green], // Gradients colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: Text(
            'flutter',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: TextField(
                      
                      maxLength: 2,
                      controller: nomcont,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "enter your age",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          xato();
                          nomv();
                          Navigator.pop(context);
                        },
                        child: Text("ok"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("back"),
                      ),
                    ],
                  ),
                );
              },
              child: Lottie.asset('assets/button.json'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HIS AGE',
                        style: TextStyle(
                            color: Color.fromARGB(255, 201, 200, 200)),
                      ),
                      Row(
                        children: [
                          Text(
                            nom,
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '/100',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 201, 200, 200)),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'OVERALL',
                        style: TextStyle(
                            color: Color.fromARGB(255, 201, 200, 200)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '34',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '/100',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 201, 200, 200)),
                                  ),
                                ],
                              ),
                              Text(
                                'Energy',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 201, 200, 200),
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.eyeglasses,
                            size: 45,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '24',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '/100',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 201, 200, 200)),
                                  ),
                                ],
                              ),
                              Text(
                                'Smart',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 201, 200, 200),
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.flash_on,
                            color: Colors.amber,
                            size: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '54',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '/100',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 201, 200, 200)),
                                  ),
                                ],
                              ),
                              Text(
                                'Speed',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 201, 200, 200),
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Stack(children: [
                        
                        Positioned(
                          top:320,
                          bottom:70,
                          left: 20,
                          right: 20,
                          child: Container(width: 1000,height: 400,
                            child: Transform(transform: Matrix4.rotationX(5),
                              child: Lottie.asset('assets/circul1.json',fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: 450,
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/odam.png'), // Changed to AssetImage
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  scrollDirection: Axis.horizontal,
                ),
                items: _imageAssets.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ));
                            },
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
