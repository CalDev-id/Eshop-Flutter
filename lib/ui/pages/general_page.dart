part of 'pages.dart';

class GeneralPage extends StatefulWidget {
  final String title;
  final Widget child;
  final Function onBackButtonPressed;

  const GeneralPage(
      {Key? key,
      required this.title,
      required this.child,
      required this.onBackButtonPressed})
      : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset('assets/oracle.svg'),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: defaultMargin),
                  child: GestureDetector(
                    onTap: () {
                      widget.onBackButtonPressed();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          widget.child,
        ],
      ),
    );
  }
}
