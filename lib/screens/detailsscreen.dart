import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/explore.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> imageUrls = [
    'assets/image1.png',
    'assets/image5.jpg',
    'assets/image6.webp',
    'assets/image7.webp',
    'assets/image8.webp',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(294),
          child: AppBar(
            flexibleSpace: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: 324.0,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
              ),
              items: imageUrls.map<Widget>((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(i),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExploreScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            actions: [
              _iconsActions(
                const Icon(
                  Icons.favorite,
                  size: 15.0,
                  color: Colors.red,
                ),
              ),
              _iconsActions(
                const Icon(
                  Icons.upload_outlined,
                  size: 15.0,
                  color: Color(0xFF5E6A81),
                ),
              ),
              // _iconsTop(
              //   IconButton(
              //     onPressed: () {},
              //     color: Colors.red,
              //     icon: const Icon(Icons.favorite),
              //   ),
              // ),
              // const SizedBox(width: 10),
              // _iconsTop(
              //   IconButton(
              //     iconSize: 20,
              //     onPressed: () {},
              //     icon: const Icon(Icons.upload_rounded),
              //     color: const Color(0xFF5E6A81),
              //   ),
              // ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _previewImages(const AssetImage('assets/image2.png')),
                        _previewImages(const AssetImage('assets/image3.png')),
                        _previewImages(const AssetImage('assets/image4.png')),
                        _previewImages(const AssetImage('assets/image5.png')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _mainTitles('Mount Bromo'),
                        _mainTitles('\$50'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _subTitles('Indonesia'),
                        _subTitles('Per person'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Text(
                      'Planning on going on a Bromo Tour? Then look no further. Below I discuss everything you need to know about a Bromo tour and how to have an amazing time...',
                      style: TextStyle(
                        color: Color(0xff425884),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10)),
                        leading: Image.asset('assets/location.png'),
                        title: const Text(
                          'Indonesia',
                          style: TextStyle(fontSize: 12),
                        ),
                        subtitle: const Text("East java, Indonesia",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E6A81))),
                      ),
                      ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10)),
                        leading: Image.asset('assets/timer.png'),
                        title: const Text(
                          'Open',
                          style: TextStyle(fontSize: 12),
                        ),
                        subtitle: const Text("09.00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E6A81))),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Image(
                      image: AssetImage('assets/image.png'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 50),
              child: Container(
                height: 69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff7DACF8),
                      Color(0xff8BD8F9),
                    ],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BOOK NOW",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _iconsActions(icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 8),
      child: Material(
        type: MaterialType.transparency,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(width: 0),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }

  Text _mainTitles(text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF5E6A81),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text _subTitles(text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF425884),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Padding _previewImages(image) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 22.0,
        bottom: 22.0,
        left: 18,
        right: 20,
      ),
      child: SizedBox(
        height: 56,
        width: 60,
        child: Image(
          image: image,
        ),
      ),
    );
  }

  // Container _iconsTop(iconW) {
  //   return Container(
  //     margin: const EdgeInsets.only(top: 10),
  //     width: 45,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(50),
  //       color: Colors.white,
  //     ),
  //     child: iconW,
  //   );
  // }
}
