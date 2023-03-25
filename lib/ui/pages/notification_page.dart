part of 'pages.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Product> products = [
    mockProduct[0],
    mockProduct[1],
    mockProduct[2]
  ];

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
        title: "Notification",
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("You have ",
                      style: GoogleFonts.poppins(color: Colors.black54)),
                  Text(
                    products.length.toString() + " Notifications",
                    style: GoogleFonts.poppins(color: mainColor),
                  ),
                  Text("Today",
                      style: GoogleFonts.poppins(color: Colors.black54)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Today",
                style: GoogleFonts.poppins(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CustomNotification(
                      product: products[index],
                      today: true,
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              Text(
                "This Week",
                style: GoogleFonts.poppins(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CustomNotification(
                      product: products[index],
                      today: false,
                    );
                  }),
            ],
          ),
        ),
        onBackButtonPressed: () {
          setState(() {
            Get.back();
          });
        });
  }
}
