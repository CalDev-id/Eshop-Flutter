part of 'widget.dart';

class CustomSize extends StatefulWidget {
  final int selectedSize;
  final List<String> size;
  final Function(int index) onTap;

  const CustomSize(
      {Key? key,
      required this.selectedSize,
      required this.size,
      required this.onTap})
      : super(key: key);

  @override
  State<CustomSize> createState() => _CustomSizeState();
}

class _CustomSizeState extends State<CustomSize> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.size.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.onTap(index);
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: index == widget.selectedSize
                            ? secondaryColor
                            : Colors.grey[200]),
                    child: Center(
                      child: Text(
                        widget.size[index],
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: index == widget.selectedSize
                                ? Colors.white
                                : Colors.black26),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
