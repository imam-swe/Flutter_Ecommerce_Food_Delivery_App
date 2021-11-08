part of pages;

class ThankPage extends StatefulWidget {
  const ThankPage({Key? key}) : super(key: key);

  @override
  _ThankPageState createState() => _ThankPageState();
}

class _ThankPageState extends State<ThankPage> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: const Icon(
            Icons.arrow_back_ios,
            color: primaryFontColor, // add custom icons also
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Chechout",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      //"Customize your payment method",
                      "Delivery Address",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: primaryFontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Container(
                    height: size.height * .002,
                    width: size.width,
                    color: placeholderColor,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 50,
                    offset: const Offset(0, 25), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  "Payment Method",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        color: primaryFontColor,
                                        fontWeight: FontWeight.bold,
                                        //fontSize: 20,
                                      ),
                                ),
                              ),
                              const FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  '+ Add Card',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2.h,
                            color: placeholderColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 90.h,
                                width: 150.w,
                                child: Image.asset(
                                  "assets/visa.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text("**** **** **** 3241"),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: mainColor)),
                                child: const FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "Delete Card",
                                    style: TextStyle(color: mainColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2.h,
                            color: placeholderColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  "Other Methods",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        color: primaryFontColor,
                                        fontWeight: FontWeight.bold,
                                        //fontSize: 20,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .08,
                    width: size.width,
                    //padding: EdgeInsets.symmetric(vertical: 20),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        minimumSize: const Size(5, 5),
                      ),
                      onPressed: () {
                        _showModalBottomSheet(size.height * .8, context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Icon(
                                FontAwesomeIcons.plus,
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "Add another Credit/Debit Card",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showModalBottomSheet(var size, BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: size,
          width: double.infinity,
          //color: Colors.grey.shade200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Add Credit/Debit Card"),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Icon(Icons.cancel_outlined),
                    )
                  ],
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                    labelText: 'Card Number',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Expiry"),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'MM',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(22), // Added this
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'YY',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(22), // Added this
                        ),
                      ),
                    ),
                  ],
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'Sequrity Code',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "You can remove this card\nat any time",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: primaryFontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeTrackColor: Colors.yellow,
                      activeColor: Colors.orangeAccent,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    _showModalBottomSheet(size.height * .7, context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Icon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Add Card",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
