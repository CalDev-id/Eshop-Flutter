part of 'pages.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Product> products = [
    mockProduct[0],
    mockProduct[1],
    mockProduct[2]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralPage(
          title: "My Cart",
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products.length.toString() + " Items",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return CustomCart(
                        product: products[index],
                      );
                    }),
              ],
            ),
          ),
          onBackButtonPressed: () {}),
    );
  }
}
