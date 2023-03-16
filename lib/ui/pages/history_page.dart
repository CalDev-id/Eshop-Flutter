part of 'pages.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "History",
      onBackButtonPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 280,
                  height: 52,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffF6F7F8),
                      border: Border.all(color: Colors.black45)),
                  child: const Icon(
                    Icons.filter_list,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomHistory(product: mockProduct[0]),
            CustomHistory(product: mockProduct[1]),
            CustomHistory(product: mockProduct[2]),
          ],
        ),
      ),
    );
  }
}
