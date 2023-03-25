part of 'widget.dart';

class CustomCart extends StatefulWidget {
  final Product product;

  const CustomCart({Key? key, required this.product}) : super(key: key);

  @override
  State<CustomCart> createState() => _CustomCartState();
}

class _CustomCartState extends State<CustomCart> {
  TextEditingController cityController = TextEditingController();

  final List<String> items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: 'E9E7E8'.toColor(),
                ),
                child: Image.asset(
                  widget.product.image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 17)),
                  Text(
                    NumberFormat.currency(
                      locale: 'id-ID',
                      symbol: 'IDR ',
                      decimalDigits: 0,
                    ).format(widget.product.price),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CustomDropdownButton2(
                hint: '1',
                dropdownItems: items,
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Remove",
            style: GoogleFonts.poppins(
                color: redRemove, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        )
      ],
    );
  }
}
