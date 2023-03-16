part of 'pages.dart';

class DetailProduct extends StatefulWidget {
  final Product product;

  const DetailProduct({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int selectedSize = 0;
  List<String> menus = [
    'S',
    'M',
    'L',
    'XS',
    'XL',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: detail,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          widget.product.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset('assets/oracle.svg'),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 30, left: defaultMargin),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      NumberFormat.currency(
                        locale: 'id-ID',
                        symbol: 'IDR ',
                        decimalDigits: 0,
                      ).format(widget.product.price),
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.product.name,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Rating(
                          rate: widget.product.rate,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('| ${widget.product.sale} Sold',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width * .90,
                      color: Colors.black26,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.product.description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Select Size',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomSize(
                      selectedSize: selectedSize,
                      size: menus,
                      onTap: (index) {
                        setState(() {
                          selectedSize = index;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Other Products',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
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
                          // Get.to(() => DetailProduct(
                          //       product: mockProduct[index],
                          //     ));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailProduct(
                                        product: mockProduct[index],
                                      )));
                        },
                        child: ProductCard(product: mockProduct[index]));
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                    bottom: 10,
                    top: 10,
                    right: defaultMargin,
                    left: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black45)),
                      child: const Icon(
                        Icons.chat_outlined,
                        color: Colors.black45,
                      ),
                    ),

                    Container(
                        width: 260,
                        height: 43,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [mainColor, secondaryColor]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 30,
                                color: Colors.black.withOpacity(.15),
                              )
                            ]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {},
                            child: Center(
                              child: Text("Add to Cart",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ),
                          ),
                        )),
                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       primary: mainColor,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //     ),
                    //     onPressed: () {},
                    //     child: SizedBox(
                    //         width: 230,
                    //         height: 45,
                    //         child: Center(
                    //             child: Text(
                    //           'Checkout',
                    //           style: GoogleFonts.poppins(
                    //               fontWeight: FontWeight.w500, fontSize: 16),
                    //         )))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
