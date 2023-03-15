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
        child: Center(child: Text("History page")),
        onBackButtonPressed: () {});
  }
}
