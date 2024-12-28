import 'package:flutter/material.dart';
import 'package:wpay/utils/constants.dart';

class StaticScreen extends StatefulWidget {
  const StaticScreen({super.key});

  @override
  State<StaticScreen> createState() => _StaticScreenState();
}

class _StaticScreenState extends State<StaticScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Constants.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
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
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                color: Constants.secondaryText,
              ),
            ),
        ),
        centerTitle: true,
        title:  Text(
          'Statistic',
          style: TextStyle(
            color: Constants.black,
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  SizedBox(
              height: media.height * 0.02,
            ),
            Container(
                width: media.width,
                height: media.height * 0.13,
                decoration: BoxDecoration(
                  color: Constants.buttonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text(
                            "Income",
                            style: TextStyle(
                              fontSize: 16,
                              color: Constants.white,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "\$5,440",
                            style: TextStyle(
                              fontSize: 26,
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
                        Text(
                            "Expense",
                            style: TextStyle(
                              fontSize: 16,
                              color: Constants.white,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "\$2,209",
                            style: TextStyle(
                              fontSize: 26,
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
             SizedBox(
              height: media.height*0.02,
            ),
            Row(
              children: [
                Container(
                  width: media.width*0.3,
                  height: media.height*0.05,
                  decoration: BoxDecoration(
                    color: Constants.placeholder,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: media.width*0.04,vertical: 5),
                    child: Row(
                      children: [
                        Text(
                             "Weekly",
                             style: TextStyle(
                                fontSize: 18,
                                color: Constants.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                          Image.asset(
                            "assets/images/w_down.png",
                            width: 25,
                            height: 25,
                          ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                  Image.asset(
                            "assets/images/inc_down.png",
                            width: 25,
                            height: 25,
                          ),
                            SizedBox(width: 5,),
                          Text(
                             "Income",
                             style: TextStyle(
                                fontSize: 18,
                                color: Constants.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                               SizedBox(width: 5,),
                              Image.asset(
                            "assets/images/exp_up.png",
                            width: 25,
                            height: 25,
                          ),
                             SizedBox(width: 5,),
                          Text(
                             "Expense",
                             style: TextStyle(
                                fontSize: 18,
                                color: Constants.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
              ]
              ),
              Image.asset(
                "assets/images/chart.png",
                width: media.width,
                height: media.height*0.3,
              ),
           
              Container(
                width: media.width,
                height: media.height*0.06,
                decoration: BoxDecoration(
                  color: Constants.placeholder,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: media.width*0.12,vertical: 5),
                      child: Text(
                        "Income",
                        style: TextStyle(
                          fontSize: 16,
                          color: Constants.secondaryText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: media.width*0.35,
                      height: media.height*0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Constants.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:5),
                        child: Center(
                          child: Text(
                            "Expense",
                            style: TextStyle(
                              fontSize: 14,
                              color: Constants.buttonColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                      
                  ]
                ),
                ),
                SizedBox(height: media.height*0.02,),
                Text(
                      "Category Chart",
                      style: TextStyle(
                        fontSize: 18,
                        color: Constants.black,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Last 7 days expenses",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Constants.secondaryText,
                            ),
                          ),
                          Spacer(),
                          Text(
                          "-\$321.00",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Constants.black,
                          ),
                          ),
                        ],
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/pie.png",
                          width: media.width*0.3,
                          height: media.height*0.15,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xffFFAE58),
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                         const SizedBox(width: 5,),
                          Text(
                            "Transportation",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color:  Color(0xffFFAE58),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Color(0xff4CD080),
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                         const SizedBox(width: 5,),
                            Text(
                          "Shopping",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4CD080),
                          ),
                          ),
                          Spacer(),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Constants.buttonColor,
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                         const SizedBox(width: 5,),
                          Text(
                          "Coffee",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Constants.buttonColor,
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: media.height*0.022,),
                      Text(
                        "Recent Expenses",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Constants.black,
                        ),
                      ),
                          SizedBox(height: media.height*0.015,),
                     Row(
                      children: [
                        Image.asset(
                          "assets/images/starbucks.png",
                          width: media.width*0.1,
                          height: media.height*0.05,
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          children: [
                            Text(
                              "Starbucks Coffee",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Constants.black,
                              ),
                            ),
                             Text(
                              "Dec 2, 2020 . 12:00 PM",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Constants.secondaryText,
                              ),
                            ),
                            
                          ],
                        ),
                        Spacer(),
                        Text(
                          "-\$124.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Constants.black,
                          ),
                        ),
                      ],
                     ),
                     Divider(
                       thickness: 1,),
                       Row(
                      children: [
                        Image.asset(
                          "assets/images/netflix.png",
                          width: media.width*0.1,
                          height: media.height*0.05,
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          children: [
                            Text(
                              "Netflix Subscription",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Constants.black,
                              ),
                            ),
                             Text(
                              "Dec 11, 2020 . 10:00 AM",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Constants.secondaryText,
                              ),
                            ),
                            
                          ],
                        ),
                        Spacer(),
                        Text(
                          "-\$87.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Constants.black,
                          ),
                        ),
                      ],
                     )
          ],
          ),
          ),
          );
  }
}