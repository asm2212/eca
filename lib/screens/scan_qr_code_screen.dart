import 'package:flutter/material.dart';
import 'package:wpay/screens/home_screen.dart';
import 'package:wpay/screens/summary_transaction_screen.dart';
import 'package:wpay/utils/constants.dart';

class ScanQrCodeScreen extends StatefulWidget {
  const ScanQrCodeScreen({super.key});

  @override
  State<ScanQrCodeScreen> createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State<ScanQrCodeScreen> {
  @override
 

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Constants.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 0,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Constants.secondaryText,
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder) => const HomeScreen()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      color: Constants.white,
                    ),
                  ),
                ),
                title: Text(
                  'Scan to Pay',
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 50,
                      height: 55,
                      decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Constants.secondaryText,
                          width: 1,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.question_mark_rounded,
                          size: 30,
                        ),
                        color: Constants.white,
                      ),
                    ),
                  ),
                ],
                expandedHeight: media.width * 2.2,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Image.asset(
                        "assets/images/noti_back.png",
                        width: media.width,
                        height: media.width * 2.2,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: media.width * 0.1,
                        right: media.width * 0.1,
                        top: media.height * 0.25,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SummaryTransactionScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            "assets/images/qrcode.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: media.width * 0.05,
              vertical: media.height * 0.03,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 4,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Constants.secondaryText,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  SizedBox(height: media.width * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Scan QR Code",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Constants.black,
                        ),
                      ),
                      SizedBox(height: media.width * 0.03),
                      Text(
                        "Scan the QR code provided by your payment gateway to make the payment",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Constants.secondaryText,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

