part of pages;

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _controller;
  final List<IntroModel> _data = IntroModel.data;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        _activeIndex = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // const SizedBox(
                    //   // height: 95,
                    //   height: 150,
                    // ),
                    Image.asset(
                      _data[index].imagePath!,
                       width: 380,
                       height: 380,
                      // fit: BoxFit.fitHeight,
                    ),
                  ],
                );
              },
            ),
          ),
          SliderIndicator(
            length: _data.length,
            activeIndex: _activeIndex,
            indicator: const Icon(
              Icons.fiber_manual_record_rounded,
              color: placeholderColor,
              size: 32,
            ),
            activeIndicator: const Icon(
              Icons.fiber_manual_record_rounded,
              color: mainColor,
              size: 32,
            ),
          ),
          const SizedBox(
            height: 20,
            //height: 100,
          ),
          SizedBox(
            // height: 150,
            child: Text(
              _data[_activeIndex].title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: primaryFontColor, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            // height: 150,
            child: Text(
              _data[_activeIndex].desc!,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: secondaryFontColor,
                    fontWeight: FontWeight.bold,
                    // height: 4
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      print((_activeIndex+1) >= _data.length);
                      if((_activeIndex + 1) >= _data.length) return;
                      _controller.animateToPage(
                        _activeIndex + 1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear,
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(mainColor),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(16),
                      ),
                    ),
                    child: const Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
