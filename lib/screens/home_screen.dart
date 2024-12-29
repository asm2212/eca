import 'package:flutter/material.dart';
import 'package:wpay/screens/confirm_transfer_screen.dart';
import 'package:wpay/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 50,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Constants.secondaryText,
                  width: 2,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                color: Constants.secondaryText,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Constants.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Text(
                "Hello Asmare,",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Constants.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    "Your available balance",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Constants.secondaryText,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 15),
                  child: Text(
                    "\$10000",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Constants.black,
                    ),
                  ),
                ),
              ],
            ),
           SizedBox(
              height: media.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: media.width,
                height: media.height * 0.15,
                decoration: BoxDecoration(
                  color: Constants.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to TransferScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConfirmTransferScreen(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/transfer.png",
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Transfer",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                     Spacer(),
                      Container(
                        width: 1,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Constants.white,
                        ),
                      ),
                      Spacer(),
                         Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/top_up.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Top Up",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Constants.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 1,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Constants.white,
                        ),
                      ),
                       Spacer(),
                         Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/history.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "History",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Constants.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Payment List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Constants.black,
                ),
              ),
            ),
            Container(
              width: media.width,
              height: media.height * 0.25,
              decoration: BoxDecoration(
                color: Constants.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/elec.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Electricity",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                               Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/internet.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Internet",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                               Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/vouch.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Voucher",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                               Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/assurance.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Assurance",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/merchant.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Merchant",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                               Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/mobile.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mobile Credit",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                               Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/bill.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Bill",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                               Column(
                          children: [
                            Container(
                              height: media.height * 0.075,
                              width: media.height * 0.08,
                              decoration: BoxDecoration(
                                color: Constants.payColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                "assets/images/more.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Constants.black,
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
            SizedBox(
              height: media.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Promo & Discount",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Constants.black,
                    ),
                  ),
                  Spacer(),
                   Text(
                    "See More",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Constants.primary,
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 10,
          ),
      SizedBox(
  height: media.height * 0.17,
  width: media.width,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(
          left: index == 0 ? 15.0 : 8.0,
          right: index == 4 ? 15.0 : 8.0,
        ),
        child: Container(
          height: media.height * 0.18,
          width: media.width * 0.6,
          decoration: BoxDecoration(
            color: Constants.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              index % 2 == 0
                  ? "assets/images/promo1.png"
                  : "assets/images/promo2.png",
              width: media.width * 0.6,
              height: media.height * 0.18,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  ),
)

            
              
          ],
        ),
      ),
    );
  }
}
