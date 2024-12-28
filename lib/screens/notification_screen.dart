import 'package:flutter/material.dart';
import 'package:wpay/utils/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                      color: Constants.primaryText,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Constants.secondaryText,
                        width: 2,                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      color: Constants.white,
                    ),
                  ),
                ),
                
        title:  Text(
          'Notification',
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
                color: Constants.primaryText,
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
                color: Constants.white,
              ),
            ),
          ),
        ],
                expandedHeight: media.width * 1,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/noti_back.png",
                    width: media.width,
                    height: media.width * 0.2,
                    fit: BoxFit.cover,
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
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TODAY",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Constants.secondaryText,
                        ),
                      ),
                      Text(
                        "Mark as read",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Constants.circleColor,
                        ),
                      ),
                 
                    ],
                  ),
                 Container(
                  height: media.height*0.1,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Constants.rectangleColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/today_noti.png",
                          width: media.width * 0.15,
                          height: media.width * 0.2,
                        ),
                        SizedBox(width: media.width * 0.03),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cashback 50% ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Constants.black,
                              ),
                            ),
                            Text(
                              "Get 50% cashback for the next top up",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Constants.secondaryText,
                              ),
                            ),  
                           Text(
                              "Top up now  >",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Constants.circleColor,
                              ),
                            ),  
                          ],
                        )
                      ]
                    ),
                  ),
                 ),
                 SizedBox(height: media.width * 0.03),
                 Text(
                  "YESTERDAY",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Constants.secondaryText,
                  ),
                  ),
                  SizedBox(height: media.width * 0.03),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/yes1.png",
                        width: media.width*0.1,
                        height: media.height*0.05,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily Cashback",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constants.black,
                            )
                          ),
                          Text(
                            "8:00 AM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: media.height*0.03,
                        width: media.width*0.14,
                        decoration: BoxDecoration(
                          color: Constants.rectangleColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Constants.circleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: media.width * 0.03),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/yes2.png",
                        width: media.width*0.1,
                        height: media.height*0.05,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Use Black10 Promo Code",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constants.black,
                            )
                          ),
                          Text(
                            "3:40 AM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: media.height*0.03,
                        width: media.width*0.14,
                        decoration: BoxDecoration(
                          color: Constants.rectangleColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Constants.circleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),SizedBox(height: media.width * 0.03),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/yes3.png",
                        width: media.width*0.1,
                        height: media.height*0.05,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cyber Monday Deal",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constants.black,
                            )
                          ),
                          Text(
                            "10:12 AM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: media.height*0.03,
                        width: media.width*0.14,
                        decoration: BoxDecoration(
                          color: Constants.rectangleColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Constants.circleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),SizedBox(height: media.width * 0.03),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/yes4.png",
                        width: media.width*0.1,
                        height: media.height*0.05,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$100 top up successfully added",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constants.black,
                            )
                          ),
                          Text(
                            "9:00 AM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: media.height*0.03,
                        width: media.width*0.14,
                        decoration: BoxDecoration(
                          color: Constants.rectangleColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "info",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Constants.circleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: media.width * 0.03),
                 Text(
                  "LAST 7 DAY",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Constants.secondaryText,
                  ),
                  ),
                  SizedBox(height: media.width * 0.03),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/L1.png",
                        width: media.width*0.1,
                        height: media.height*0.05,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Use Nov10 Promo Code",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constants.black,
                            )
                          ),
                          Text(
                            "8:00 AM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: media.height*0.03,
                        width: media.width*0.14,
                        decoration: BoxDecoration(
                          color: Constants.rectangleColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Constants.circleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: media.width * 0.03),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/L2.png",
                        width: media.width*0.1,
                        height: media.height*0.05,
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "30% Black Friday Sale",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Constants.black,
                            )
                          ),
                          Text(
                            "3:40 AM",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            )
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: media.height*0.03,
                        width: media.width*0.14,
                        decoration: BoxDecoration(
                          color: Constants.rectangleColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Constants.circleColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),SizedBox(height: media.width * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
