import 'package:flutter/material.dart';
import 'package:wpay/screens/password_confirm_screen.dart';
import 'package:wpay/screens/scan_qr_code_screen.dart';
import 'package:wpay/utils/constants.dart';

class SummaryTransactionScreen extends StatefulWidget {
  const SummaryTransactionScreen({super.key});

  @override
  State<SummaryTransactionScreen> createState() => _SummaryTransactionScreenState();
}

class _SummaryTransactionScreenState extends State<SummaryTransactionScreen> {
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ScanQrCodeScreen()));
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
                  'Summary Transaction',
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
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/sum.png",
                              fit: BoxFit.contain,
                              height: media.width * 0.22,
                              width: media.width * 0.22,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Starbucks Coffee",
                              style: TextStyle(
                                color: Constants.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Payment on Dec 2, 2020",
                              style: TextStyle(
                                color: Color(0xffFFAE58),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                             SizedBox(height: media.height * 0.05),
                             Text(
                              "\$15.00",
                              style: TextStyle(
                                color: Constants.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                                SizedBox(height: media.height * 0.02),
                                Container(
                                  height: media.height * 0.05,
                                  width: media.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Constants.buttonColor
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Row(
                                      
                                      children: [
                                        Image.asset(
                                          "assets/images/info.png",
                                          fit: BoxFit.contain,
                                          width: media.width * 0.05,
                                          height: media.width * 0.05,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Payment fee \$2 has been applied",
                                          style: TextStyle(
                                            color: Constants.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                          ],
                        )
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 4,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Constants.secondaryText,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  SizedBox(height: media.width * 0.03),
                  Text(
                        "Choose Cards",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Constants.black,
                        ),
                      ),
                      
                       Container(
                  height: media.height*0.1,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Constants.placeholder,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                    child: Row(
                      children: [
                        Container(
                               width: media.width * 0.15,
                            height: media.width * 0.15,
                            decoration: BoxDecoration(
                              color: Constants.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: media.width * 0.12,
                            height: media.width * 0.12,
                          ),
                        ),
                        SizedBox(width: media.width * 0.03),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wally Virtual Card ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Constants.black,
                              ),
                            ),
                            Text(
                              "0138-1234-4657",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Constants.secondaryText,
                              ),
                            ),  
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/images/card_d.png",
                          fit: BoxFit.contain,
                          width: media.width * 0.1,
                        ),
                      ]
                    ),
                  ),
                 ),
                 SizedBox(height: media.width * 0.03),
                 Container(
                  
                  height: media.height*0.07,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Constants.circleColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordConfirmScreen(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Proceed to Pay",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Constants.white,
                        ),
                      ),
                    ),
                  )
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