part of 'widget.dart';

class CustomNotification extends StatefulWidget {
  final Product product;
  final bool today;

  const CustomNotification(
      {Key? key, required this.product, required this.today})
      : super(key: key);

  @override
  State<CustomNotification> createState() => _CustomNotificationState();
}

class _CustomNotificationState extends State<CustomNotification> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.today
            ? const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  "•",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 45,
                      color: Colors.red),
                ),
              )
            : const SizedBox(),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.today ? detail : pinkNotif,
          ),
          child: Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            widget.today
                ? const Text(
                    "8 Hours Ago",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  )
                : const Text(
                    "7 Days Ago",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
          ],
        )
      ],
    );
  }
}
