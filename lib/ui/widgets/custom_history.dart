part of 'widget.dart';

class CustomHistory extends StatefulWidget {
  final Product product;

  const CustomHistory({Key? key, required this.product}) : super(key: key);

  @override
  State<CustomHistory> createState() => _CustomHistoryState();
}

class _CustomHistoryState extends State<CustomHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            )
          ]),
      child: Row(children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: detail,
          ),
          child: Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.product.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Air Jordan America',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black45,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              NumberFormat.currency(
                locale: 'id-ID',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(widget.product.price),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                colors: [
                  mainColor,
                  secondaryColor,
                ],
              )),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduct(
                                product: widget.product,
                              )));
                },
                child: const Text("Buy Again",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ))),
          ),
        )
      ]),
    );
  }
}
