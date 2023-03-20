part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: 'F5F7F9'.toColor(),
              child: Column(children: [
                Container(
                  color: banner,
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: Row(children: [
                    const SizedBox(
                      width: 250,
                      height: 45,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black45),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/nav1.svg', width: 38),
                    const Spacer(),
                    SvgPicture.asset('assets/nav2.svg', width: 39),
                  ]),
                ),
                // Image.asset(
                //   'assets/images/banner.png',
                // ),
                Container(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    aspectRatio: 2 / 1,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                  items: images
                      .map((item) => Container(
                            child: Center(
                                child: Image.asset(item, fit: BoxFit.cover)),
                          ))
                      .toList(),
                )),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: banner,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset('assets/category.svg',
                                      color: category, width: 32),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Category',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: banner,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset('assets/shirt.svg',
                                      width: 32),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Clothes',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: banner,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    'assets/devices.svg',
                                    width: 32,
                                    color: category,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Electronics',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: banner,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    'assets/home.svg',
                                    width: 32,
                                    color: category,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'House',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: banner,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    'assets/bowl.svg',
                                    width: 32,
                                    color: category,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Foods',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                )
                              ],
                            ),
                          ]),
                      const SizedBox(height: 20),
                      SvgPicture.asset('assets/slash.svg', width: 35),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    children: [
                      Text(
                        'Best Sale Product',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'See More',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: mainColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: defaultMargin),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: mockProduct.length,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Get.to(() => DetailProduct(
                                  product: mockProduct[index],
                                ));
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => DetailProduct(
                            //               product: mockProduct[index],
                            //             )));
                          },
                          child: ProductCard(product: mockProduct[index]));
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  ),
                ),
                const SizedBox(height: 50),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
