import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/detailsscreen.dart';
import '../pages/auth.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int currentIndex = 2;

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _signOutFunction() {
    return IconButton(
      onPressed: signOut,
      icon: const Icon(Icons.arrow_back),
      color: const Color(0xFF5E6A81),
    );
  }

  final List<Map<String, dynamic>> itemList = [
    {
      'image': 'assets/images/image1.png',
      'text1': 'Mount Bromo',
      'text2': 'Indonesia',
      'text3': '4.6',
    },
    {
      'image': 'assets/images/image2.png',
      'text1': 'Colosseum',
      'text2': 'Rome, Itlay',
      'text3': '4.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FBFF),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF8BD8F9),
        unselectedItemColor: const Color(0xFF5E6A81),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 51.0, right: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        _signOutFunction(),
                        const Text(
                          'Explore',
                          style: TextStyle(
                            color: Color(0xFF5E6A81),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(width: 0, color: Colors.white),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt),
                      color: const Color(0xFF5E6A81),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 450,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 22, right: 22),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white)),
                        labelText: 'Mount Bruno',
                        labelStyle: const TextStyle(
                          color: Color(0xFFBFBFBF),
                          fontSize: 10,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.tune,
                            color: Color(0xFFBFBFBF),
                          ),
                          onPressed: () {},
                        ),
                        prefixIcon:
                            const Icon(Icons.search, color: Color(0xFFBFBFBF))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff7DACF8),
                        Color(0xff8BD8F9),
                      ],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Advanture",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffffffff),
                        Color(0xffffffff),
                      ],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Tour",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5E6A81),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffffffff),
                        Color(0xffffffff),
                      ],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Advanture",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5E6A81),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 242,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    final item = itemList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 22.0,
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 234,
                          width: 233,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    item['image'],
                                    height: 160,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 160.0, top: 10.0),
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 0),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: InkWell(
                                          onTap: () {},
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.bookmark_outlined,
                                              size: 15.0,
                                              color: Color(0xFF5E6A81),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Text(
                                  item['text1'],
                                  style: const TextStyle(
                                    color: Color(0xFF5E6A81),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 22.0, right: 22.0),
                                    child: Text(
                                      item['text2'],
                                      style: const TextStyle(
                                        color: Color(0xFF5E6A81),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 22.0),
                                    child: Container(
                                      height: 15,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF5E6A81),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          item['text3'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 22.0),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5E6A81)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 12),
                        foregroundColor: const Color(0xFF5E6A81)),
                    onPressed: () {},
                    child: const Text('See all'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 22.0,
                right: 22.0,
              ),
              child: SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10)),
                        leading: Image.asset('assets/images/list1.png'),
                        title: const Text("Colosseum",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5E6A81))),
                        subtitle: const Text(
                          '25 March- 29 March,2023',
                          style: TextStyle(fontSize: 8),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios)),
                    const SizedBox(
                      height: 12,
                    ),
                    ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10)),
                        leading: Image.asset('assets/images/list2.png'),
                        title: const Text("Mount Bromo",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5E6A81))),
                        subtitle: const Text(
                          '5 April- 12 April,2023',
                          style: TextStyle(fontSize: 8),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios)),
                    const SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      tileColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10)),
                      leading: Image.asset('assets/images/list3.png'),
                      title: const Text("Gundam Statue",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF5E6A81))),
                      subtitle: const Text(
                        '9 April- 12 April,2023',
                        style: TextStyle(fontSize: 8),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
