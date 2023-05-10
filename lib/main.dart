import 'package:flutter/material.dart';

void main() {
  runApp(const uts_06tplm005_201011401584());
}

class uts_06tplm005_201011401584 extends StatefulWidget {
  const uts_06tplm005_201011401584({Key? key}) : super(key: key);

  @override
  State<uts_06tplm005_201011401584> createState() => _MyAppState();
}

class _MyAppState extends State<uts_06tplm005_201011401584> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 25,
          title: Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromRGBO(101, 101, 101, 1),
                  fontSize: 45,
                  fontFamily: 'Kanit',
                ),
              ),
              const SizedBox(width: 290),
              Image.asset(
                'images/jiaaa.jpg',
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          RoundedBox(
            color: Color.fromARGB(255, 208, 231, 123),
            text1: 'Nike SB Zoom Blazer',
            text2: 'Mid Premium',
            text3: '',
            text4: 'Rp 4,449,000',
            imageUrl:
                'images/sepatu2.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(213, 249, 242, 1),
            text1: 'Nike Air Zoom Pegasus',
            text2: "Men's Rood Runing Shoes",
            text3: '',
            text4: 'Rp 2,999,000',
            imageUrl:
                'images/sepatu1.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: const Color.fromRGBO(251, 233, 233, 1),
            text1: 'Nike ZoomX Pavorly',
            text2: "Men's Rood Racing Shoe",
            text3: '',
            text4: 'Rp 5,999,000',
            imageUrl:
                'images/sepatu2.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 247, 146, 143),
            text1: 'Nike Air Force 1 S50',
            text2: "Older Kid's Shoe",
            text3: '1 Colour',
            text4: 'Rp 2,999,000',
            imageUrl:
                'images/sepatu1.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 180, 142, 240),
            text1: 'Nike Waffle One',
            text2: "Men's Shoes",
            text3: '',
            text4: 'Rp 3,449,000',
            imageUrl:'images/sepatu1.png',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;

  const RoundedBox({
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -17,
            right: -2,
            child: Image.asset(
              imageUrl,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
